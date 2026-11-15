$hr = Import-Csv "evidence\synthetic-hr-termination-register.csv"
$entra = Import-Csv "evidence\synthetic-entra-account-disable-register.csv"
$samples = Import-Csv "itgc-audit\access-management\iam-02-sample-selection.csv"

$results = foreach ($sample in $samples) {

    $employee = $hr | Where-Object Employee_ID -eq $sample.Employee_ID
    $account = $entra | Where-Object Employee_ID -eq $sample.Employee_ID

    $status = "Unable to Determine"
    $hours = $null
    $observation = ""

    if (-not $employee -or -not $account) {
        $observation = "Missing HR or Entra ID record"
    }
    elseif ([string]::IsNullOrWhiteSpace($account.Disable_Timestamp_UTC)) {
        $observation = "Missing account disable timestamp"
    }
    elseif ($account.Account_Status -ne "Disabled") {
        $observation = "Account status not confirmed as disabled"
    }
    else {
        $terminationTime = [DateTimeOffset]::Parse($employee.Termination_Timestamp_UTC)
        $disableTime = [DateTimeOffset]::Parse($account.Disable_Timestamp_UTC)

        $hours = [Math]::Round(
            ($disableTime - $terminationTime).TotalHours, 2
        )

        if ($hours -lt 0) {
            $status = "Unable to Determine"
            $observation = "Disable timestamp precedes termination; requires investigation"
        }
        elseif ($hours -le 24) {
            $status = "Pass"
            $observation = "Account disabled within 24 hours"
        }
        else {
            $status = "Fail"
            $observation = "Account disabled after 24-hour requirement"
        }
    }

    [PSCustomObject]@{
        Employee_ID = $sample.Employee_ID
        Access_Level = $employee.Access_Level
        Termination_Type = $employee.Termination_Type
        Termination_Timestamp_UTC = $employee.Termination_Timestamp_UTC
        Disable_Timestamp_UTC = $account.Disable_Timestamp_UTC
        Hours_To_Disable = $hours
        Test_Result = $status
        Observation = $observation
    }
}

$results | Export-Csv `
    -Path "itgc-audit\access-management\iam-02-test-results.csv" `
    -NoTypeInformation -Encoding utf8

Write-Host "=== IAM-02 CONTROL TEST RESULTS ==="
Write-Host "Total tested:" $results.Count

$results |
    Group-Object Test_Result |
    Select-Object Name, Count |
    Format-Table -AutoSize

$results |
    Select-Object Employee_ID, Access_Level, Hours_To_Disable, Test_Result |
    Format-Table -AutoSize
