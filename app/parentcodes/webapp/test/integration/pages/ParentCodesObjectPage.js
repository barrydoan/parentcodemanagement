sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.sap.learning.katie.parentcodemanagement.parentcodes',
            componentId: 'ParentCodesObjectPage',
            entitySet: 'ParentCodes'
        },
        CustomPageDefinitions
    );
});