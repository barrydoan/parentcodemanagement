sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sap/learning/katie/parentcodemanagement/parentcodes/test/integration/FirstJourney',
		'com/sap/learning/katie/parentcodemanagement/parentcodes/test/integration/pages/ParentCodesList',
		'com/sap/learning/katie/parentcodemanagement/parentcodes/test/integration/pages/ParentCodesObjectPage'
    ],
    function(JourneyRunner, opaJourney, ParentCodesList, ParentCodesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sap/learning/katie/parentcodemanagement/parentcodes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheParentCodesList: ParentCodesList,
					onTheParentCodesObjectPage: ParentCodesObjectPage
                }
            },
            opaJourney.run
        );
    }
);