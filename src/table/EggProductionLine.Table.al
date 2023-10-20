table 50127 "Egg Production Line"
{
    DataClassification = CustomerContent;
    Caption = 'Egg Production Line';
    DrillDownPageId = "Egg Prodcution Line List";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Line No.';
        }
        field(3; "Chicken No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Chicken."No.";
            Caption = 'Chicken No.';
            trigger OnValidate()
            begin
                CalcFields("Chicken Description");
            end;
        }
        field(4; "Chicken Description"; Text[100])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Chicken.Description
                          where("No." = field("Chicken No.")));
            Caption = 'Chicken Description';
        }
        field(5; "Egg Production Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Production Date';
        }
        field(6; "Egg Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Code';
            TableRelation = "Egg Type".Code;
            trigger OnValidate()
            begin
                CalcFields("Egg Type Description");
            end;
        }
        field(7; "Egg Type Description"; Text[100])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Egg Type".Description
                          where(Code = field("Egg Type Code")));
            Caption = 'Egg Type Description';
        }
        field(8; Quantity; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
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

}