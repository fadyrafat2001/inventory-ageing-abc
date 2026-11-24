# Inventory ageing and ABC

**Status: synthetic build-in-progress case study, not a completed Power BI report.**

Prepared with assistant support for review, testing and adaptation. This is not presented as prior independent work or a real company engagement. No confidential employer data is included.

## Business question
Where is stock value concentrated, and which older stock should be reviewed first?

## Data and method
24 fictional SKUs in one snapshot dated 30 September 2026. ABC uses annual usage value, not stock quantity. Labels are precomputed for the whole snapshot, not dynamically recalculated by slicer.

## Reference results and limits
Synthetic stock value is EGP 145,700; EGP 77,644 is older than 180 days. ABC counts are A: 11, B: 6, C: 7. Ageing is a review prompt, not an impairment conclusion. No inventory-turnover claim is made.

All figures describe the designed synthetic scenario, not an actual business outcome. Reference calculations and input checks were performed outside Power BI. They are acceptance targets, not proof that the M, DAX or native model works.

## Included assets
Synthetic input data, data dictionary, model specification, Power Query M source, DAX measure source, report-build steps and expected-results tests. See the supplied build documentation for table grains, relationship directions, measure definitions, tests and exclusions.

## Not yet implemented or verified
A generated PBIX draft is included for testing in Power BI Desktop. This version has not been natively tested. M and DAX have not been executed in Power BI Desktop. Relationships, refresh, visuals, slicers, drill-through and interactions still need native implementation and testing. No RLS, incremental refresh, gateway or built-in time intelligence is claimed.

## Completion criteria
Import and type the source data; validate keys and relationships; create each measure; compare whole-data and filtered results; test interactions; save and reopen PBIX; record the Desktop version and refresh/test results; capture actual report and Model view screenshots. Update this status only after those checks pass.
