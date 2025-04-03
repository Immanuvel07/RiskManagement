namespace RiskManagement;

using { DELL } from '../srv/external/DELL.cds';

entity Risks
{
    key ID : UUID;
    TITLE : String(100);
    Prio : String(5);
    Description : String(100);
    Impact : Integer;
    Criticality : Integer;
    a_BusinessPartner : Association to one DELL.A_BusinessPartner;
    mitigation : Association to one Mitigations;
}

entity Mitigations
{
    key ID : UUID;
    CreatedAt : String(100);
    CreatedBy : String(100);
    Description : String(100);
    Owner : String(100);
    Timeline : String(100);
    risks : Association to many Risks on risks.mitigation = $self;
}
