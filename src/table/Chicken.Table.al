table 50120 Chicken
{
    DataClassification = CustomerContent;
    Caption = 'Chicken';
    LookupPageId = "Chicken List";
    DrillDownPageId = "Chicken List";

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(3; "Chicken Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken Type Code';
            TableRelation = "Chicken Type";
            trigger OnValidate()
            begin
                CalcFields("Chicken Type Description");
            end;
        }
        field(4; "Last Date Modified"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(5; Picture; MediaSet)
        {
            DataClassification = CustomerContent;
            Caption = 'Picture';
        }
        field(6; "Chicken Type Description"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Chicken Type".Description
            where(Code = field("Chicken Type Code")));
            Caption = 'Chicken Type Description';
            Editable = false;
            trigger OnValidate()
            begin
                //"Chicken Type Description".
            end;
        }
        field(7; "No. of Eggs Produced"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Egg Production Line".Quantity
                           where("Chicken No." = field("No."),
                                 "Egg Production Date" = field("Date Filter"),
                                 "Egg Type Code" = field("Egg Type Filter")));
            Editable = false;
            Caption = 'No. of Eggs Produced';
        }
        field(8; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
            Caption = 'Date Filter';
        }
        field(9; "Egg Type Filter"; Code[20])
        {
            TableRelation = "Egg Type";
            FieldClass = FlowFilter;
            Caption = 'Egg Type Filter';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description, "Chicken Type Code")
        {

        }

        fieldgroup(Brick; Description, Picture)
        {

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
    var
        EggProductionLine: Record "Egg Production Line";
        ChickenHasEggsErr: Label 'The Chicken %1 %2 has eggs. You can''t delete it!';
    begin
        Clear(EggProductionLine);
        EggProductionLine.SetRange("Chicken No.", "No.");
        if EggProductionLine.FindFirst() then
            Error(ChickenHasEggsErr, "No.", Description);
    end;

    trigger OnRename()
    begin

    end;

}