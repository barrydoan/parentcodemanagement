using ParentCodeService as service from '../../srv/parentcodes-service';

annotate service.ParentCodes with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: '{i18n>Valuechainrootcode}',
        Value: VALUECHAIN_ROOT_CODE,
    },
    {
        $Type: 'UI.DataField',
        Label: '{i18n>Title}',
        Value: TITLE,
    },
    {
        $Type: 'UI.DataField',
        Label: '{i18n>Spotlighttopic}',
        Value: SPOTLIGHT_TOPIC,
    },
    {
        $Type: 'UI.DataField',
        Value: PORTFOLIO_DIMENSION,
        Label: '{i18n>Portfoliodimension}',
    },
    {
        $Type: 'UI.DataField',
        Value: PORTFOLIO_MANAGER,
        Label: '{i18n>Portfoliomanager}',
    },
]);

annotate service.ParentCodes with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Rowid}',
                Value: ROW_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Deliverableid}',
                Value: DELIVERABLE_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Valuechainrootcode}',
                Value: VALUECHAIN_ROOT_CODE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Title}',
                Value: TITLE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Spotlighttopic}',
                Value: SPOTLIGHT_TOPIC,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Portfoliodimension}',
                Value: PORTFOLIO_DIMENSION,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Portfoliomanager}',
                Value: PORTFOLIO_MANAGER,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Learningarchitect}',
                Value: LEARNING_ARCHITECT,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Ektpl}',
                Value: EKT_PL,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Contentowner}',
                Value: CONTENT_OWNER,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Changedat}',
                Value: CHANGED_AT,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Changedby}',
                Value: CHANGED_BY,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Changecomment}',
                Value: CHANGE_COMMENT,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Deleted}',
                Value: DELETED,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Productionclusterid}',
                Value: PRODUCTION_CLUSTER_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Productionmanager}',
                Value: PRODUCTION_MANAGER,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Tileid}',
                Value: TILE_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Tiletype}',
                Value: TILE_TYPE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Ppmsobjectnumber}',
                Value: PPMS_OBJECT_NUMBER,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Ppmsproduct}',
                Value: PPMS_PRODUCT,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Ppmsproductline}',
                Value: PPMS_PRODUCT_LINE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Ppmsproductcategory}',
                Value: PPMS_PRODUCT_CATEGORY,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Bucketguid}',
                Value: BUCKET_GUID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Parentcodecomment}',
                Value: PARENT_CODE_COMMENT,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Staycurrentcertification}',
                Value: STAY_CURRENT_CERTIFICATION,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Retired}',
                Value: RETIRED,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Rootparentcode}',
                Value: ROOT_PARENT_CODE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Liveaccesssystemavailable}',
                Value: LIVE_ACCESS_SYSTEM_AVAILABLE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Startingcertificationrelease}',
                Value: STARTING_CERTIFICATION_RELEASE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Parentcodetype}',
                Value: PARENT_CODE_TYPE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Targetaudiencerole}',
                Value: TARGET_AUDIENCE_ROLE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Certificationlevel}',
                Value: CERTIFICATION_LEVEL,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Credlytemplateid}',
                Value: CREDLY_TEMPLATE_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Retirementdate}',
                Value: RETIREMENT_DATE,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Basic',
        ID    : 'Basic',
        Target: '@UI.FieldGroup#Basic',
    }, ]
);

annotate service.ParentCodes with @(UI.FieldGroup #Basic: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Value: VALUECHAIN_ROOT_CODE,
            Label: 'VALUECHAIN_ROOT_CODE',
        },
        {
            $Type: 'UI.DataField',
            Value: CERTIFICATION_LEVEL,
            Label: 'CERTIFICATION_LEVEL',
        },
        {
            $Type: 'UI.DataField',
            Value: PORTFOLIO_MANAGER,
            Label: 'PORTFOLIO_MANAGER',
        },
    ],
});

annotate service.ParentCodes with {
    CERTIFICATION_LEVEL @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'CertificationLevelValueList',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: CERTIFICATION_LEVEL,
                ValueListProperty: 'VALUE',
            }, ],
            Label         : 'Certification Level',
        },
        Common.ValueListWithFixedValues: true
    )
};

annotate service.ParentCodes with {
    PORTFOLIO_MANAGER @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Users',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: PORTFOLIO_MANAGER,
                    ValueListProperty: 'USER_ID',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'DISPLAY_NAME',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'EMAIL_ADDRESS',
                },
            ],
            Label         : 'Users',
        },
        Common.ValueListWithFixedValues: true
    )
};
annotate service.ParentCodes with {
    PORTFOLIO_MANAGER @Common.Text : {
            $value : PORTFOLIO_MANAGER_ASS.DISPLAY_NAME,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
