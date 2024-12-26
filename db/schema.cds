namespace MyProject;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

entity Risk
{
    key ID : UUID;
    Title : String(100);
    Prio : String(5);
    descr : String(100);
    Impact : Integer;
    Criticality : Integer;
    mitigation : Association to one Mitigation;
    Supplier : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigation
{
    key ID : UUID;
    Descriptiopn : String(100);
    Timeline : String(100);
    Owner : String(100);
    risk : Association to many Risk on risk.mitigation = $self;
    CreatedBy : String(100);
    CreatedAt : String(100);
}
