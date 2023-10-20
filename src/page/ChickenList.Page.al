page 50121 "Chicken List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Chicken;
    CardPageId = "Chicken Card";
    Caption = 'Chicken List';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ToolTip = 'Specifies the value of the Chicken Type Code field';
                    ApplicationArea = All;
                }
                field("No. of Eggs Produced"; Rec."No. of Eggs Produced")
                {
                    ToolTip = 'Specifies the value of the No. of Eggs Produced field';
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