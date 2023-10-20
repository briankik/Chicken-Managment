codeunit 50120 Installation
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertDefaultChickenTypes();
    end;

    local procedure InsertDefaultChickenTypes()
    var
        ChickenType: Record "Chicken Type";
    begin
        Clear(ChickenType);
        if ChickenType.IsEmpty then begin
            InsertChickenType('CHICKEN001', 'Chicken Type One');
            InsertChickenType('CHICKEN002', 'Chicken Type Two');
            InsertChickenType('CHICKEN003', 'Chicken Type Three');
        end else
            exit;
    end;

    local procedure InsertChickenType(ChickenTypeCode: Code[20]; ChickenTypeDescription: Text[50])
    var
        ChickenType: Record "Chicken Type";
    begin
        Clear(ChickenType);
        ChickenType.Code := ChickenTypeCode;
        ChickenType.Description := ChickenTypeDescription;
        ChickenType.Insert();
    end;
}