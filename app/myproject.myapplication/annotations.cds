using MyProjectService as service from '../../srv/service';
annotate service.Risk with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : Title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Prio',
                Value : Prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impact',
                Value : Impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Criticality',
                Value : Criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier_BusinessPartner',
                Value : Supplier_BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : mitigation.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : Supplier.BusinessPartnerFullName,
                Label : 'BusinessPartnerFullName',
            },
            {
                $Type : 'UI.DataField',
                Value : Supplier.BusinessPartnerIsBlocked,
                Label : 'BusinessPartnerIsBlocked',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : Title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Prio',
            Value : Prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impact',
            Value : Impact,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Criticality',
            Value : Criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : Supplier.BusinessPartner,
            Label : 'BusinessPartner',
        },
    ],
);

annotate service.Risk with {
    mitigation @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Mitigation',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : mitigation_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Descriptiopn',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Timeline',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Owner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'CreatedBy',
            },
        ],
    }
};

annotate service.Risk with {
    Supplier @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'A_BusinessPartner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Supplier_BusinessPartner,
                    ValueListProperty : 'BusinessPartner',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Customer',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Supplier',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerCategory',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerFullName',
                },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BusinessPartnerIsBlocked',
            },
            ],
        },
        Common.ValueListWithFixedValues : false,
    )
};

