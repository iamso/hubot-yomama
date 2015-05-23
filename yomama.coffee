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

URL = "http://api.yomomma.info/"

module.exports = (robot) ->

  robot.hear /(yo\s?mama)|your\smom/i, (res) ->
    robot.http(URL)
      .get() (err, resp, body) ->
        data = JSON.parse body
        if err
          res.send "Sorry, yo mama didn't answer."
        else
          res.reply data.joke
