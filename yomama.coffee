# Description:
#   Random yo mama joke
#
# Commands:
#   yomama - Get a random yo mama joke
#   yo mama - Get a random yo mama joke
#
# Author:
#   iamso
#
module.exports = (robot) ->

  robot.hear /yo\s?mama/i, (res) ->
    robot.http("http://api.yomomma.info/")
      .get() (err, resp, body) ->
        data = JSON.parse body
        if err
          res.send 'Sorry, yo mama didn\'t answer.'
        else
          res.reply data.joke
