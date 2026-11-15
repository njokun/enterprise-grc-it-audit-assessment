# ITGC Audit Test Plan — IAM-02 User Access Termination

## Engagement Information

- Client: Northstar Financial Technologies (fictional)
- Control ID: IAM-02
- Control Name: User Access Termination
- Audit Period: January 1 to September 30, 2026
- Control Owner: IT Manager
- Assessment Type: Simulated ITGC Operating Effectiveness Test
- Status: Planning

## 1. Risk Statement

Former employees may retain access to corporate systems after termination, potentially resulting in unauthorized access, data disclosure, or misuse of privileged accounts.

## 2. Control Objective

Ensure that employee accounts are disabled within the timeframe defined by the organization's access termination policy.

## 3. Assumed Control Requirement

Northstar's fictional access termination policy requires employee accounts to be disabled within 24 hours of the effective termination timestamp.

This requirement is an assumption established for this simulated engagement. It is not presented as a universal ISO 27001 or SOC 2 requirement.

## 4. Audit Population

Population: 30 simulated employee terminations occurring between January 1 and September 30, 2026.

Population source: Synthetic HR termination register.

Completeness and accuracy of the population must be evaluated before testing.

## 5. Sample Selection

Sample size: 10 termination records.

Method: Judgmental risk-based selection.

Selection considerations:
- Privileged access
- Employees with access to sensitive systems
- Different termination months
- Voluntary and involuntary departures
- Records with potentially delayed account deactivation

The selected sample is not statistically representative of the entire population.

## 6. Evidence Requirements

1. HR termination register containing employee identifiers and effective termination timestamps.
2. Entra ID account-disable records containing corresponding employee identifiers and disable timestamps.
3. Evidence of the applicable termination policy.
4. Documentation of any exceptions and remediation actions.

All evidence in this project is synthetic.

## 7. Testing Procedures

1. Obtain the simulated HR termination population.
2. Evaluate population completeness and accuracy.
3. Select 10 records using documented risk-based criteria.
4. Match each selected employee to the account-disable evidence.
5. Calculate elapsed time between termination and account disablement.
6. Compare elapsed time against the 24-hour requirement.
7. Record exceptions and investigate missing evidence.
8. Summarize results and prepare an audit conclusion.

## 8. Pass and Fail Criteria

Pass:
- Reliable evidence demonstrates that the account was disabled no later than 24 hours after the effective termination timestamp.

Fail:
- The account was disabled more than 24 hours after termination.

Unable to Determine:
- Required timestamps or corroborating evidence are missing or unreliable.

Potential control exceptions will be documented individually.

## 9. Testing Limitations

- No production HR or Entra ID access.
- All employee records are fictional.
- Timestamps and supporting evidence are simulated.
- No actual operating effectiveness conclusion about a real organization.
- No statistical projection from the selected sample.

## 10. Planned Deliverables

- Synthetic HR termination register
- Synthetic Entra ID account-disable records
- Sample selection documentation
- Control testing working paper
- Exception log
- Audit finding and remediation recommendation
- Simulated audit conclusion
