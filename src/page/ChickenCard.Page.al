page 50120 "Chicken Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Chicken;

    layout
    {
        area(Content)
        {
            group(General)
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
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ToolTip = 'Specifies the value of the Last Date Modified field';
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Picture; Rec.Picture)
                {
                    ToolTip = 'Specifies the value of the Picture field';
                    ApplicationArea = All;
                }
                field("Chicken Type Description"; Rec."Chicken Type Description")
                {
                    ToolTip = 'Specifies the value of the This displays Chicken Type description field';
                    ApplicationArea = All;
                }
                field("No. of Eggs Produced"; Rec."No. of Eggs Produced")
                {
                    ToolTip = 'Specifies the value of the No. of Eggs Produced field';
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}