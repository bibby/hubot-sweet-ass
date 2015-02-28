# Description:
#   Sweet-Ass
#
#   http://xkcd.com/37/
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   bibby

module.exports = (robot) ->
  regex = /-ass\s+\w+/
  robot.hear regex, (msg) ->
    msg.send msg.envelope.message.text.replace '-ass ', ' ass-'
