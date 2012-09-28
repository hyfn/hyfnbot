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
#   hubot lobotomize - puts hubot into a vegetative state
#   hubot transplant - wakes hubot from his vegetative state
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
    motorskills = robot.listeners;
    robot.listeners = []

  
    msg.send _.shuffle(reflexes)[0]
    
    robot.respond /.*/i, (msg) ->
      msg.send _.shuffle(reflexes)[0]
    
    robot.respond /transplant/i, (msg) ->
      robot.listeners = motorskills
      msg.send "ಠ_ಠ"