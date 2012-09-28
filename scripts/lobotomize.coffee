# Description:
#   None
#
# Dependencies:
#   underscore
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   dleavitt

_ = require("underscore")

reflexes = [
  "stares into the distance"
  "drools"
  "nods slightly"
  "stares back through vacant eyes"
  "sheds a single tear"
  "blinks, cocks head"
  "gurgles"
]


module.exports = (robot) ->
  robot.respond /lobotomize/i, (msg) ->
    robot.listeners = []
  
    msg.send _.shuffle(reflexes)[0]
    
    robot.respond /.*/i, (msg) ->
      msg.send _.shuffle(reflexes)[0]
    