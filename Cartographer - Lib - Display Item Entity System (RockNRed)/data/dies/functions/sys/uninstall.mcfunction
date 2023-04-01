
#Remove scoreboards
scoreboard objectives remove dies.master
scoreboard objectives remove dies.trigger
scoreboard objectives remove dies.place_item_frame
scoreboard objectives remove dies.object.frame_facing
scoreboard objectives remove dies.object.display.pose
scoreboard objectives remove dies.object.display.rotation
scoreboard objectives remove dies.object.display.size
scoreboard objectives remove dies.object.item_type
scoreboard objectives remove dies.option.player.action_feedback
scoreboard objectives remove dies.option.player.sounds.gui
scoreboard objectives remove dies.option.player.sounds.world
scoreboard objectives remove dies.relog
scoreboard objectives remove give_placeable_item

#Kill all (loaded) D.i.e.s. entities
kill @e[tag=dies.object]
