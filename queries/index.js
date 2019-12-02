var promise = require('bluebird');

var options = {
  // Initialization Options
  promiseLib: promise
};

var pgp = require('pg-promise')(options);
var connectionString = 'postgres://<role>:<password>@localhost<port>/postgres';
var db = pgp(connectionString);

/* get all test execution results */

function getAllTestExecutionDetails(req, res, next) {
  db.any('select * from _tbexecutiondetails '
    + 'where executionid <= 6 AND executionid > 1 order by executionid desc')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved all test execution details'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

/* get all test execution results based on featureid*/

function getFeatureTestExecutionDetails(req, res, next) {
  db.any('select _tbexecutiondetails.featureid, _tbexecutiondetails.executionid, _tbexecutiondetails.status,_tbfeature.name from _tbexecutiondetails '
    + 'INNER JOIN _tbfeature ON _tbexecutiondetails.featureid = _tbfeature.featureid '
    + 'where executionid <= 6 AND executionid > 1 order by executionid')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved feature test execution details'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

/* get all test execution results based on featureid and TestPlan*/

function getTestPlanResults(req, res, next) {
  db.any('select _tbexecutiondetails.featureid, _tbexecutiondetails.executionid, _tbexecutiondetails.status,_tbfeature.name, _tbtestplan.name AS "testplan" from _tbexecutiondetails '
    + 'INNER JOIN _tbfeature ON _tbexecutiondetails.featureid = _tbfeature.featureid '
    + 'INNER JOIN _tbtestplan ON _tbexecutiondetails.testplanid = _tbtestplan.testplanid '
    + 'where executionid <= 6 AND executionid > 1 order by executionid')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved test plan results'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

/* get all test execution results based on featureid, TestPlan, testCaseId*/

function getTestCaseResults(req, res, next) {
  db.any('select _tbexecutiondetails.featureid, _tbexecutiondetails.executionid, _tbexecutiondetails.status,_tbfeature.name, _tbtestplan.name AS "testplan", _tbtestcases.name AS "testcase" from _tbexecutiondetails '
    + 'INNER JOIN _tbfeature ON _tbexecutiondetails.featureid = _tbfeature.featureid '
    + 'INNER JOIN _tbtestplan ON _tbexecutiondetails.testplanid = _tbtestplan.testplanid '
    + 'INNER JOIN _tbtestcases ON _tbexecutiondetails.testcaseid = _tbtestcases.testcaseid '
    + 'where executionid <= 6 AND executionid > 1 order by executionid')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved test case results'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}
module.exports = {
  getAllTestExecutionDetails: getAllTestExecutionDetails,
  getFeatureTestExecutionDetails: getFeatureTestExecutionDetails,
  getTestPlanResults: getTestPlanResults,
  getTestCaseResults: getTestCaseResults
};
