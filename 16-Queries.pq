// UNEXECUTED M SOURCE. Create text parameter WorkbookPath with full local XLSX path.
// Create this function as fxSheet; invoke it once per data sheet below.
(sheetName as text) as table =>
let
    Source = Excel.Workbook(File.Contents(WorkbookPath), null, true),
    Data = Source{[Item=sheetName, Kind="Sheet"]}[Data],
    Headers = Table.PromoteHeaders(Data, [PromoteAllScalars=true])
in
    Headers

// Separate query named FactStock:
let
    Source = fxSheet("FactStock"),
    Typed = Table.TransformColumnTypes(Source, {{"SKU", type text}, {"Category", type text}, {"Warehouse", type text}, {"OnHand_Qty", type number}, {"UnitCost_EGP", type number}, {"Age_Days", type number}, {"Annual_Usage_Qty", type number}, {"Annual_Usage_Value_EGP", type number}, {"Stock_Value_EGP", type number}, {"ABC_Class", type text}}, "en-US")
in
    Typed

// Separate query named DimCategory:
let
    Source = fxSheet("DimCategory"),
    Typed = Table.TransformColumnTypes(Source, {{"Category", type text}}, "en-US")
in
    Typed

// Separate query named DimWarehouse:
let
    Source = fxSheet("DimWarehouse"),
    Typed = Table.TransformColumnTypes(Source, {{"Warehouse", type text}}, "en-US")
in
    Typed

