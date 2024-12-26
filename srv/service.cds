using { BusinessPartnerA2X } from './external/BusinessPartnerA2X.cds';

using { MyProject as my } from '../db/schema.cds';

@path : '/service/MyProjectService'
service MyProjectService
{
    annotate Mitigation with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Riskviewer' ] }
    ];

    annotate Risk with @restrict :
    [
        { grant : [ '*' ], to : [ 'RiskManager' ] }
    ];

    @odata.draft.enabled
    entity Risk as
        projection on my.Risk;

    @odata.draft.enabled
    entity Mitigation as
        projection on my.Mitigation;

    entity A_BusinessPartner as
        projection on BusinessPartnerA2X.A_BusinessPartner
        {
            BusinessPartner,
            Customer,
            Supplier,
            BusinessPartnerCategory,
            BusinessPartnerFullName,
            BusinessPartnerIsBlocked
        };
}

annotate MyProjectService with @requires :
[
    'authenticated-user'
];
