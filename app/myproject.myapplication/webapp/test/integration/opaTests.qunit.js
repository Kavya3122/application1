sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'myproject/myapplication/test/integration/FirstJourney',
		'myproject/myapplication/test/integration/pages/RiskList',
		'myproject/myapplication/test/integration/pages/RiskObjectPage'
    ],
    function(JourneyRunner, opaJourney, RiskList, RiskObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('myproject/myapplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRiskList: RiskList,
					onTheRiskObjectPage: RiskObjectPage
                }
            },
            opaJourney.run
        );
    }
);