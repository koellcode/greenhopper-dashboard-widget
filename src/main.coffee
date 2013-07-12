load =  ->
    api     = new GreenhopperAPI()
    api.sprintTasks (err, res) ->
        message = ""

        if err?
            message = err
        else
            alert res.text
            message = JSON.parse res.text

        tasks = ""
        alert message
        for issue in message.issues
            tasks+= "<p>#{issue.key}</p>"
        

        document.getElementsByClassName("helloText")[0].innerHTML = tasks
    return
