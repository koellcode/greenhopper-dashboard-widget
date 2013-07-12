request = require 'superagent'

class GreenhopperAPI
    sprintTasks: (cb) ->
        request
            .get("http://jira.local.de/rest/api/latest/search?jql=sprint%3D45")
            .set('Accept', 'application/json')
            .auth('user', 'pw')
            .end (err, res) ->
                cb(err,res)