page 50123 "Egg Types"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Type";
    Caption = 'Egg Types';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field(Code; Rec.Code)
                {
                    ToolTip = 'Specifies the value of the Code field';
                    ApplicationArea = All;
                    Caption = 'Code';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                    Caption = 'Description';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                ApplicationArea = All;
                Image = Insert;
                ToolTip = 'Inserts Default Egg Types';
                Caption = 'Insert Default Egg Types';

                trigger OnAction()
                var
                    ChickenNo: Integer;
                    ChickenCode: Code[20];
                    ChickenDesc: Text[100];
                    EggType: Record "Egg Type";
                    EggTypeNotEmptyErr: Label 'There are already Egg Types in the table';
                begin
                    Clear(EggType);
                    if EggType.IsEmpty then begin
                        for ChickenNo := 1 to 3 do begin
                            ChickenCode := 'C' + Format(ChickenNo);
                            ChickenDesc := 'Chicken ' + ChickenCode;
                            EggType.InsertEggType(ChickenCode, ChickenDesc);
                        end;
                    end else
                        error(EggTypeNotEmptyErr);

                end;
            }
        }
    }
}