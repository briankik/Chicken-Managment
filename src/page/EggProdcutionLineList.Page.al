page 50129 "Egg Prodcution Line List"
{
    PageType = List;
    UsageCategory = None;
    SourceTable = "Egg Production Line";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Chicken No."; Rec."Chicken No.")
                {
                    ToolTip = 'Specifies the value of the Chicken No. field';
                    ApplicationArea = All;
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ToolTip = 'Specifies the value of the Chicken Description field';
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field';
                    ApplicationArea = All;
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ToolTip = 'Specifies the value of the Egg Production Date field';
                    ApplicationArea = All;
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ToolTip = 'Specifies the value of the Egg Type Code field';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}