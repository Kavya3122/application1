sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'myproject.myapplication',
            componentId: 'RiskObjectPage',
            contextPath: '/Risk'
        },
        CustomPageDefinitions
    );
});