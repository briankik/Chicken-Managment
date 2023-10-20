table 50123 "Egg Type"
{
    DataClassification = CustomerContent;
    Caption = 'Egg Type';
    DrillDownPageId = "Egg Types";
    LookupPageId = "Egg Types";

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    procedure InsertEggType(EggTypeCode: Code[20]; EggTypeDescription: Text[50])
    var
        EggType: Record "Egg Type";
    begin
        Clear(EggType);
        EggType.Code := EggTypeCode;
        EggType.Description := EggTypeDescription;
        EggType.Insert();
    end;

}