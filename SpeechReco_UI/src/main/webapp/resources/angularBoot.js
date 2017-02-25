/**
 * Created by Coffee13 on 2017-02-05.
 */
//angular.module("srAppRoot", ["commonModule", "recognizerModule","ngResource", "ui.router", "ui.bootstrap"]);
$(document).ready(function () {
   angular.module("dependenciesModule", srDependencies);
   srModules.splice(0, 0, "dependenciesModule");
   angular.bootstrap(document.getElementById("srAppRoot"), srModules);
});