/**
 * Created by Coffee13 on 2017-02-05.
 */
angular.module("recognizerModule", [])

.constant("RECOGNIZER_MODULE_STATES", {
    index: "index",
    recognize: "recognize",
    myListOfTranslations: "myList",
    compare: "compare",
    about: "about"
})

.config(function ($stateProvider,  $urlRouterProvider, $locationProvider, RECOGNIZER_MODULE_STATES){

    var indexState = {
        name: RECOGNIZER_MODULE_STATES.index,
        url: "/",
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
        templateUrl: "/resources/recognizer/views/myList/myList.html",
        controller: "MyListController"
    };
    var compareState = {
        name: RECOGNIZER_MODULE_STATES.compare,
        url: "/compare",
        templateUrl: "/resources/recognizer/views/compare/compare.html",
        controller: "CompareController"
    };

    var aboutState = {
        name: RECOGNIZER_MODULE_STATES.about,
        url: "/about",
        templateUrl: "/resources/recognizer/views/about/about.html",
        controller: "AboutController"
    };

    $stateProvider.state(indexState);
    $stateProvider.state(recognizeState);
    $stateProvider.state(myListState);
    $stateProvider.state(compareState);
    $stateProvider.state(aboutState);

    $locationProvider.html5Mode(true);
});