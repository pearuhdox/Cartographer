
#Remove scoreboards
#\Score Storage Location
scoreboard objectives remove bbl.storage
#\Constants
scoreboard objectives remove bbl.constant
#\Relog score
scoreboard objectives remove bbl.relog
#\RNG
scoreboard objectives remove bbl.rng
#\Y checker
#\Precise
scoreboard objectives remove bbl.y_past.pre
#\Block
scoreboard objectives remove bbl.y_past.bck
#\Item effects
#\Interaction Blocker
scoreboard objectives remove bbl.ie.block
#\Minus xp
#\xp
scoreboard objectives remove bbl.xp
#\success
scoreboard objectives remove bbl.xp.success
#\Relco
scoreboard objectives remove bbl.relco.X1
scoreboard objectives remove bbl.relco.Y1
scoreboard objectives remove bbl.relco.Z1

scoreboard objectives remove bbl.relco.X2
scoreboard objectives remove bbl.relco.Y2
scoreboard objectives remove bbl.relco.Z2

scoreboard objectives remove bbl.relco.XD
scoreboard objectives remove bbl.relco.YD
scoreboard objectives remove bbl.relco.ZD
#Actionbar muter
scoreboard objectives remove bbl.actionbar_spam_mute

#CDL Scoreboards
#Healing queue
scoreboard objectives remove bbl.heal_queue
#Damaging queue
scoreboard objectives remove bbl.damage_queue
#Damage timer
scoreboard objectives remove bbl.damage_timer
#HPMod queue (Shorthand for Healing/Damaging queues)
scoreboard objectives remove bbl.hpm_queue
#True damage health score
scoreboard objectives remove bbl.p_health

scoreboard objectives remove bbl.hth.post_hp
scoreboard objectives remove bbl.hth.pre_hp
scoreboard objectives remove bbl.hth.amount

#Drop kb
scoreboard objectives remove bbl.drop_kb
#Place spruce stairs
scoreboard objectives remove bbl.place_spruce_stair
#Place barrel
scoreboard objectives remove bbl.action.place_barrel


#\Move detector
#Mute timer
scoreboard objectives remove bbl.move.mute
#\Walk
scoreboard objectives remove bbl.move.walk
#\Sprint
scoreboard objectives remove bbl.move.sprint
#\Crouch
scoreboard objectives remove bbl.move.crouch
#\Climb
scoreboard objectives remove bbl.move.climb
#\Horse
scoreboard objectives remove bbl.move.horse
#\Swim
scoreboard objectives remove bbl.move.swim
#\Walk underwater
scoreboard objectives remove bbl.move.walk_underwater

##\Mouse
##\Pitch
###\Current
scoreboard objectives remove bbl.move.mouse_angle.pitch.current
###\Previous
scoreboard objectives remove bbl.move.mouse_angle.pitch.past
##\Yaw
###\Current
scoreboard objectives remove bbl.move.mouse_angle.yaw.current
###\Previous
scoreboard objectives remove bbl.move.mouse_angle.yaw.past


#Remove teams
team remove no_collide
team remove full_collide

team remove aqua
team remove black
team remove blue
team remove dark_aqua
team remove dark_blue
team remove dark_gray
team remove dark_green
team remove dark_purple
team remove dark_red
team remove gold
team remove gray
team remove green
team remove light_purple
team remove red
team remove white
team remove yellow

#Remove forceload chunk
fill 4206848 -1 4206879 4206863 -64 4206864 air
fill 4206848 0 4206879 4206863 127 4206864 air
fill 4206848 128 4206879 4206863 255 4206864 air

#Un-Forceload chunk
forceload remove 4206857 4206872

#Misc.
tag @a remove bbl.initialized
