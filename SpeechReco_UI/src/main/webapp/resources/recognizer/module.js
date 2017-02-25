/**
 * Created by Coffee13 on 2017-02-05.
 */
angular.module("recognizerModule", [])

.constant("RECOGNIZER_MODULE_STATES", {
    index: "index",
    recognize: "recognize",
    myListOfTranslations: "myList"
})

.config(function ($stateProvider,  $urlRouterProvider, $locationProvider, RECOGNIZER_MODULE_STATES){

    var indexState = {
        name: RECOGNIZER_MODULE_STATES.index,
        url: "/index",
        templateUrl: "/resources/recognizer/views/index/index.html",
        controller: "IndexController"
    };

    var recognizeState = {
        name: RECOGNIZER_MODULE_STATES.recognize,
        url: "/recognize",
        templateUrl: "/resources/recognizer/views/recognize/recognize.html",
        controller: "RecognizeController"
    };

    var myListState = {
        name: RECOGNIZER_MODULE_STATES.myListOfTranslations,
        url: "/myTranslations",
        templateUrl: "resources/recognizer/views/myList/myList.html",
        controller: "MyListController"
    };
    $stateProvider.state(indexState);
    $stateProvider.state(recognizeState);
    $stateProvider.state(myListState);

    $locationProvider.html5Mode(true);
});