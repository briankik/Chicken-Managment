page 50127 "Egg Production Subpage"
{
    PageType = ListPart;
    SourceTable = "Egg Production Line";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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