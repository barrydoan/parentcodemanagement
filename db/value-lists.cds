namespace com.sap.learning.katie.parentcodemanagement.valuelist;

using com.sap.learning.katie.parentcodemanagement.types from '../db/types';

@readonly
entity KatieValueList {
    TABLENAME   : types.tablename;
    FIELDNAME   : types.fieldname;
    VALKEY      : String;
    VALUE       : types.str_value;
    DESCRIPTION : types.valuedesc;
    AUTH        : String
}

@readonly
//@cds.odata.valuelist
entity ParentCodeTypes         as
    select from KatieValueList as kvl {
        kvl.VALUE
    }
    where
            kvl.TABLENAME = 'T_PARENT_CODE'
        and kvl.FIELDNAME = 'TILE_TYPE'
        and kvl.AUTH      = 'User'
    order by
        kvl.VALKEY asc;

@readonly
//@cds.odata.valuelist
entity CertificationLevelTypes as
    select from KatieValueList as kvl {
        kvl.VALUE
    }
    where
            kvl.TABLENAME = 'T_PARENT_CODE'
        and kvl.FIELDNAME = 'CERTIFICATION_LEVEL'
        and kvl.AUTH      = 'User'
    order by
        kvl.VALKEY asc;
