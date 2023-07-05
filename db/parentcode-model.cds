namespace com.sap.learning.katie.parentcodemanagement;

using {com.sap.learning.katie.parentcodemanagement.types} from '../db/types';

//@cds.persistence.exists
entity ParentCodes {
    key ROW_ID                         : types.id;
        DELIVERABLE_ID                 : types.id;
        VALUECHAIN_ROOT_CODE           : types.course_code;
        TITLE                          : types.title;
        SPOTLIGHT_TOPIC                : types.spotlight_topic default 'Not applicable';
        PORTFOLIO_DIMENSION            : types.portfolio_dimension;
        //PORTFOLIO_CATEGORY: types.portfolio_category;
        //PRODUCT_CATEGORY: types.guessed30;
        PORTFOLIO_MANAGER              : types.userid;
        LEARNING_ARCHITECT             : types.userid;
        EKT_PL                         : types.userid;
        CONTENT_OWNER                  : types.userid;
        CHANGED_AT                     : Timestamp;
        CHANGED_BY                     : types.userid;
        CHANGE_COMMENT                 : types.description;
        DELETED                        : types.boolean default 'false';
        PRODUCTION_CLUSTER_ID          : types.guessed30 default '';
        PRODUCTION_MANAGER             : types.userid;
        TILE_ID                        : types.tile_id;
        TILE_TYPE                      : types.tile_type;
        PPMS_OBJECT_NUMBER             : types.ppms_object_number;
        PPMS_PRODUCT                   : types.ppms_product;
        PPMS_PRODUCT_LINE              : types.ppms_product_line;
        PPMS_PRODUCT_CATEGORY          : types.ppms_product_category;
        BUCKET_GUID                    : types.bucket_guid;
        //PPMS_PRODUCT_KEY: types.ppms_product_key;
        PARENT_CODE_COMMENT            : types.description;
        STAY_CURRENT_CERTIFICATION     : types.boolean default 'false';
        RETIRED                        : types.boolean default 'false';
        ROOT_PARENT_CODE               : types.course_code;
        LIVE_ACCESS_SYSTEM_AVAILABLE   : types.boolean default 'false';
        STARTING_CERTIFICATION_RELEASE : types.collection;
        //
        PARENT_CODE_TYPE               : types.parent_code_type;
        TARGET_AUDIENCE_ROLE           : types.target_audience_role;
        CERTIFICATION_LEVEL            : types.certification_level;
        CREDLY_TEMPLATE_ID             : types.creadly_template_id;
        RETIREMENT_DATE                : Timestamp;
        PORTFOLIO_MANAGER_ASS          : Association to Users
                                             on PORTFOLIO_MANAGER_ASS.USER_ID = PORTFOLIO_MANAGER;
}

@readonly
entity Users {
    key USER_ID          : String;
        DISPLAY_NAME     : String;
        EMAIL_ADDRESS    : String;
        FIRST_NAME       : String;
        LAST_NAME        : String;
        PHONE_LANDLINE   : String;
        COMPANY_CODE     : String;
        COST_CENTER_ID   : String;
        COST_CENTER_NAME : String;
        ACTIVE           : String;
        PRECONFIGURED    : String;
}
