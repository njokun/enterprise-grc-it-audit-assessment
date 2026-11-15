# ITGC Audit Working Paper — IAM-02

## Engagement Information

- Client: Northstar Financial Technologies (fictional)
- Control ID: IAM-02
- Control: User Access Termination
- Audit Period: January 1 – September 30, 2026
- Assessment Type: Simulated Operating Effectiveness Test
- Working Paper Reference: WP-IAM-02
- Evidence Classification: Synthetic

## 1. Audit Objective

Determine whether selected terminated employee accounts were disabled within 24 hours of the effective termination timestamp.

## 2. Risk

Former employees may retain unauthorized access to corporate systems after termination.

## 3. Testing Methodology

- Population: 30 synthetic HR termination records
- Sample: 10 judgmentally selected involuntary terminations
- Selection emphasis: Privileged access and higher-risk departures
- Evidence: Synthetic HR and Entra ID registers
- Testing tool: PowerShell
- Pass threshold: Account disabled within 24 hours

The sample is not statistically representative of the full population.

## 4. Test Results

| Result | Count |
|---|---:|
| Pass | 5 |
| Fail | 4 |
| Unable to Determine | 1 |
| Total Tested | 10 |

## 5. Confirmed Exceptions

| Employee ID | Hours to Disable | Result |
|---|---:|---|
| EMP-005 | 44 | Fail |
| EMP-010 | 42 | Fail |
| EMP-016 | 44 | Fail |
| EMP-026 | 46 | Fail |

## 6. Insufficient Evidence

- EMP-029: Missing account disable timestamp

## 7. Preliminary Audit Conclusion

The simulated IAM-02 control did not operate consistently across the tested sample.

Four of the ten selected terminations exceeded the assumed 24-hour disablement requirement. One additional record lacked sufficient evidence to determine whether the requirement was met.

The exceptions indicate potential weaknesses in the timeliness and documentation of employee offboarding.

## 8. Preliminary Recommendations

1. Automate HR-to-IT termination notifications.
2. Establish alerts for accounts not disabled within the required timeframe.
3. Prioritize immediate review of privileged account terminations.
4. Maintain reliable audit logs documenting account disablement.
5. Perform periodic reconciliation between HR termination records and active accounts.

## 9. Audit Limitations

- All records and evidence are synthetic.
- The testing results do not describe a real organization.
- The 24-hour requirement is an assumed internal policy.
- The sample was judgmentally selected and includes only involuntary terminations.
- Population completeness was not independently verified against a source HR system.
- No management response or remediation evidence has been obtained.

## 10. Supporting Artifacts

- iam-02-test-plan.md
- iam-02-sample-selection.csv
- iam-02-test-results.csv
- synthetic-hr-termination-register.csv
- synthetic-entra-account-disable-register.csv
- scripts/test-iam02.ps1

## 11. Review Status

Preliminary — Pending Exception Analysis and Management Response Simulation.
