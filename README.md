# Enterprise Cybersecurity GRC & IT Audit Assessment

**Status:** In Progress  
**Project Type:** Independent Cybersecurity Portfolio Project  
**Client:** Northstar Financial Technologies (Fictional)  
**Focus:** IT Audit | Governance, Risk & Compliance | IT General Controls | Security Assurance

## Project Overview

This project simulates an enterprise cybersecurity governance, risk, and compliance assessment for Northstar Financial Technologies, a fictional fintech organization.

The objective is to demonstrate how an IT auditor or GRC analyst can plan an assessment, identify and map controls, evaluate audit evidence, perform risk-based testing, document findings, and track proposed remediation activities.

All organizational records, employee information, management responses, and audit evidence are synthetic.

This is an educational portfolio project, not a real client engagement, independent audit opinion, ISO 27001 certification assessment, or SOC 2 attestation.

## Assessment Frameworks

The project incorporates concepts and control mappings from:

- ISO/IEC 27001:2022
- NIST Cybersecurity Framework 2.0
- SOC 2 Trust Services Criteria
- IT General Controls (ITGC)

Framework mappings are proposed references for the simulated assessment and do not establish compliance.

## Project Scope

The assessment is organized into the following workstreams:

1. Governance and control framework mapping
2. Identity and Access Management (IAM)
3. Change Management
4. IT Operations
5. Third-Party Risk Management
6. Compliance readiness
7. Risk assessment and executive reporting

Workstreams are at different stages of development.

## Completed Work

### 1. Engagement Planning and Framework Mapping

- Created a fictional fintech company profile and assessment methodology.
- Developed an inventory of 20 security controls.
- Mapped controls to relevant ISO 27001, NIST CSF 2.0, and SOC 2 references.
- Documented mapping review items and decisions.
- Defined the simulated SOC 2 readiness scope.

### 2. IAM-02: User Access Termination Control Assessment

**Status: Completed â€” Simulated Assessment**

Audit objective:

Determine whether terminated employee accounts were disabled within Northstar's assumed 24-hour requirement.

Assessment approach:

- Created a synthetic population of 30 employee termination records.
- Reconciled simulated HR and Microsoft Entra ID account records.
- Selected 10 records using judgmental, risk-based sampling.
- Developed a PowerShell script to automate testing.
- Calculated account disablement delays.
- Documented control exceptions and evidence limitations.
- Prepared an audit working paper and formal finding.
- Developed a fictional management response and proposed remediation tracker.

### IAM-02 Test Results

| Result | Number of Samples |
|---|---:|
| Pass | 5 |
| Fail | 4 |
| Unable to Determine | 1 |
| Total | 10 |

Four sampled accounts were disabled after the assumed 24-hour deadline, with recorded delays ranging from 42 to 46 hours.

One additional sample lacked sufficient evidence to determine whether the requirement was met.

These results apply only to the selected synthetic sample and must not be extrapolated to a real organization or the entire simulated population.

### 3. Audit Documentation and Remediation

Completed artifacts include:

- IAM risk and control matrix
- IAM-02 audit test plan
- Synthetic evidence registers
- Risk-based sample selection
- PowerShell testing script
- Control test results
- Audit working paper
- Exception register
- Formal audit finding
- Proposed management response
- Remediation tracker

The remediation actions are proposals and have not been implemented or validated.

## Current Work: Change Management ITGC

The next assessment focuses on CHG-02: Change Testing and Approval.

The planned testing will evaluate whether selected standard production changes have:

- Documented change requests
- Authorized approvals before deployment
- Successful testing before deployment
- Traceable supporting evidence

The Change Management assessment is not yet completed.

## Repository Structure

```text
company-scenario/
framework-mapping/
maturity-assessment/
risk-management/
itgc-audit/
  access-management/
  change-management/
  it-operations/
iam-automation/
compliance-readiness/
evidence/
  screenshots/
executive-reporting/
scripts/

```

Some directories are reserved for future work and may not yet contain files.

## Tools and Skills Demonstrated

- PowerShell scripting and CSV-based control testing
- Risk-based audit sampling
- ITGC design and operating effectiveness assessment
- Audit evidence reconciliation
- Risk and control matrices
- ISO 27001, NIST CSF 2.0, and SOC 2 control mapping
- Audit working papers and findings
- Remediation planning and tracking
- Git version control and technical documentation

## Evidence and Screenshots

Selected screenshots of the simulated audit process are available in:

`evidence/screenshots/`

The screenshots demonstrate sample selection, automated control testing, audit documentation, exception reporting, and remediation tracking.

All displayed assessment data is synthetic.

## Planned Next Steps

- Complete Change Management ITGC testing.
- Develop IT Operations control assessments.
- Expand risk and compliance readiness deliverables.
- Prepare executive-level reporting.
- Document lessons learned and final project conclusions.

## Important Limitations

This project uses a fictional organization and entirely synthetic evidence.

No real employee records, production identity systems, client environments, or confidential organizational information were accessed.

The project does not represent a real external audit, formal compliance certification, or SOC 2 attestation.

Findings and conclusions are limited to the simulated scenarios and evidence developed for this portfolio.

---

**Project Status: In Progress**
