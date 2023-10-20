page 50125 "Chicken Management Role Center"
{
    PageType = RoleCenter;
    Caption = 'Chicken Management Role Center';

    layout
    {
        area(RoleCenter)
        {
            part(HeadLineOrderProcessor; "Headline RC Order Processor")
            {
                ApplicationArea = All;
                Caption = 'Headline RC Order Processor';
            }
            part(O365CustomerActivity; "O365 Customer Activity Page")
            {
                ApplicationArea = All;
                Caption = 'O365 Customer Activity Page';
            }
            part(O365Activities; "O365 Activities")
            {
                ApplicationArea = All;
                Caption = 'O365 Activities';
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(MasterData)
            {
                Caption = 'Master Data';
                Image = RegisteredDocs;
                action(ChickenList)
                {
                    ApplicationArea = All;
                    Caption = 'Chicken List';
                    RunObject = page "Chicken List";
                }
                action(ChickenTypes)
                {
                    ApplicationArea = All;
                    Caption = 'Chicken Types';
                    RunObject = page "Chicken Types";
                }
            }
            group(Documents)
            {
                Caption = 'Documents';
                action(EggProduction)
                {
                    Caption = 'Egg Production List';
                    ApplicationArea = All;
                    RunObject = page "Egg Production List";
                }
                action(EggTypes)
                {
                    Caption = 'Egg Types';
                    ApplicationArea = All;
                    RunObject = page "Egg Types";
                }
            }
        }

        area(Embedding)
        {
            action(eChickenList)
            {
                Caption = 'Chicken List';
                ApplicationArea = All;
                RunObject = page "Chicken List";
            }
            action(eChickenTypes)
            {
                Caption = 'Chicken Types';
                ApplicationArea = All;
                RunObject = page "Chicken Types";
            }
            action(eEggProduction)
            {
                Caption = 'Egg Production List';
                ApplicationArea = All;
                RunObject = page "Egg Production List";
            }
            action(eEggTypes)
            {
                Caption = 'Egg Types';
                ApplicationArea = All;
                RunObject = page "Egg Types";
            }
        }
    }
}