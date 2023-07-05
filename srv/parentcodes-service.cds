using {com.sap.learning.katie.parentcodemanagement as persistence} from '../db/parentcode-model';
using {com.sap.learning.katie.parentcodemanagement.valuelist} from '../db/value-lists';

@path: 'service/parentcode'
service ParentCodeService {
    annotate ParentCodes with @odata.draft.enabled;
    entity ParentCodes                 as projection on persistence.ParentCodes;
    entity ParentCodeTypesValueList    as projection on valuelist.ParentCodeTypes;
    entity CertificationLevelValueList as projection on valuelist.CertificationLevelTypes;
    entity KatieValueList              as projection on valuelist.KatieValueList
    entity Users                       as projection on persistence.Users
}
