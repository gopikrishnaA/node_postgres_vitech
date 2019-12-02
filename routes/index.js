var express = require('express');
var router = express.Router();
var db = require('../queries');


router.get('/api/getalltestresults', db.getAllTestExecutionDetails);
router.get('/api/getfeaturetestresults', db.getFeatureTestExecutionDetails);
router.get('/api/gettestplanresults', db.getTestPlanResults);
router.get('/api/gettestcaseresults', db.getTestCaseResults);

// application -------------------------------------------------------------
router.get('/', function (req, res) {
    res.status(200)
    .json({
        status: 'success',
        message: {}
    });
});

module.exports = router;
