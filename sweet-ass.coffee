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
  regex = /(-ass\s+\w+)/
  robot.hear regex, (msg) ->
    m = msg.match[1]
    r = m.replace '-ass ', 'ass-'
    t = msg.envelope.message.text
    n = t.replace m, " *" + r + "*"

    msg.send n
