# ITGC Audit Finding — IAM-02-001

## Finding Information

- Client: Northstar Financial Technologies (fictional)
- Finding ID: IAM-02-001
- Control ID: IAM-02
- Finding Title: Delayed Deactivation of Terminated Employee Accounts
- Assessment Period: January 1 to September 30, 2026
- Proposed Severity: High
- Finding Status: Preliminary
- Control Owner: IT Manager
- Evidence Classification: Synthetic

## 1. Executive Summary

A simulated operating effectiveness assessment of the user access termination control identified four instances where employee accounts were disabled after the organization's assumed 24-hour termination requirement.

One additional sampled termination lacked sufficient evidence to determine whether account disablement occurred within the required timeframe.

These results indicate inconsistent operation of the simulated user access termination control across the selected sample.

## 2. Criteria

Northstar's assumed internal access termination policy requires employee accounts to be disabled within 24 hours of the effective termination timestamp.

This is a fictional internal policy requirement established for this simulation. It is not presented as a universal regulatory or framework-mandated deadline.

## 3. Condition

The audit tested 10 judgmentally selected employee terminations from a synthetic population of 30 records.

Results:

- 5 records passed.
- 4 records failed the 24-hour requirement.
- 1 record lacked sufficient evidence.

### Confirmed Control Exceptions

| Employee ID | Disablement Delay | Result |
|---|---:|---|
| EMP-005 | 44 hours | Fail |
| EMP-010 | 42 hours | Fail |
| EMP-016 | 44 hours | Fail |
| EMP-026 | 46 hours | Fail |

### Evidence Limitation

EMP-029 had no recorded account-disable timestamp. Its compliance status could not be determined.

The missing timestamp does not independently prove that the account remained active.

## 4. Cause

Root cause has not been established from the available simulated evidence.

Potential contributing factors requiring investigation include:

- Delayed HR-to-IT termination notifications.
- Manual offboarding dependencies.
- Insufficient monitoring of termination tickets.
- Lack of escalation for overdue account disablement.

These are investigation hypotheses, not confirmed causes.

## 5. Effect and Risk

Delayed account deactivation may increase the opportunity for unauthorized access after employment termination.

Potential consequences include:

- Unauthorized access to corporate applications.
- Exposure of confidential business information.
- Misuse of privileged permissions.
- Increased difficulty demonstrating effective access governance.

No actual unauthorized access or security incident was established by this simulated assessment.

## 6. Proposed Severity

High — Preliminary.

Rationale:

- Four confirmed failures among ten risk-selected records.
- Delays ranging from 42 to 46 hours.
- One exception involving a privileged account.
- One additional record with insufficient evidence.

Final severity requires consideration of compensating controls, account activity, system sensitivity, and management-provided context.

## 7. Recommendations

1. Establish reliable HR-to-IT termination notifications.
2. Automate account disablement where feasible.
3. Implement alerts for overdue termination actions.
4. Prioritize privileged and high-risk accounts.
5. Reconcile HR termination records against identity platform records.
6. Retain reliable account-disablement evidence.
7. Perform follow-up testing after remediation.

## 8. Proposed Remediation Plan

| Action | Proposed Owner | Target |
|---|---|---|
| Investigate delayed terminations | IT Manager | Within 15 days |
| Review HR-to-IT notification workflow | HR and IT Managers | Within 30 days |
| Implement overdue termination alerts | Security Manager | Within 45 days |
| Perform follow-up control testing | Internal Audit | After remediation |

All target periods are proposed for this simulation and have not been approved by fictional management.

## 9. Management Response

Pending simulated management response.

## 10. Supporting Evidence

- iam-02-test-plan.md
- iam-02-sample-selection.csv
- iam-02-test-results.csv
- iam-02-exception-register.csv
- iam-02-audit-working-paper.md
- synthetic-hr-termination-register.csv
- synthetic-entra-account-disable-register.csv

## 11. Audit Limitations

This finding is based entirely on fictional client information and synthetic evidence.

It does not represent an actual audit engagement, production control assessment, independent attestation, or finding against a real organization.

The judgmental sample consisted exclusively of involuntary terminations. Results cannot be statistically extrapolated to the full termination population.
