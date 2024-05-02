
#Forceload chunk.
forceload add 4206857 4206872

#Gamerules
#\Command limit
gamerule commandModificationBlockLimit 9999999

#Add scoreboards
#\Score Storage Location
scoreboard objectives add bbl.storage dummy
#\Constants
scoreboard objectives add bbl.constant dummy
#\Relog score
scoreboard objectives add bbl.relog minecraft.custom:minecraft.leave_game
#\RNG
scoreboard objectives add bbl.rng dummy
#\Y checker
#\Precise
scoreboard objectives add bbl.y_past.pre dummy
#\Block
scoreboard objectives add bbl.y_past.bck dummy
#\Item effects
#\Interaction Blocker
scoreboard objectives add bbl.ie.block dummy
#\Minus xp
#\xp
scoreboard objectives add bbl.xp dummy
#\success
scoreboard objectives add bbl.xp.success dummy
#\Relco
scoreboard objectives add bbl.relco.X1 dummy "RelCo X Coordinate 1"
scoreboard objectives add bbl.relco.Y1 dummy "RelCo Y Coordinate 1"
scoreboard objectives add bbl.relco.Z1 dummy "RelCo Z Coordinate 1"

scoreboard objectives add bbl.relco.X2 dummy "RelCo X Coordinate 2"
scoreboard objectives add bbl.relco.Y2 dummy "RelCo Y Coordinate 2"
scoreboard objectives add bbl.relco.Z2 dummy "RelCo Z Coordinate 2"

scoreboard objectives add bbl.relco.XD dummy "RelCo Relative X Coordinate"
scoreboard objectives add bbl.relco.YD dummy "RelCo Relative Y Coordinate"
scoreboard objectives add bbl.relco.ZD dummy "RelCo Relative Z Coordinate"
#\ID scoreboard
scoreboard objectives add bbl.id dummy
#\Clocks
scoreboard objectives add bbl.clock dummy
#\Slot changes
scoreboard objectives add bbl.slot_change.past dummy
scoreboard objectives add bbl.slot_change.present dummy
#\Gamemode changes
scoreboard objectives add bbl.gamemode_change.past dummy
scoreboard objectives add bbl.gamemode_change.present dummy
scoreboard objectives add bbl.gamemode_change.old_gamemode dummy
#\Actionbar muter
scoreboard objectives add bbl.actionbar_spam_mute dummy
#\Universal enderchest id system for enabling/disabling the right menus
scoreboard objectives add bbl.universal_active_enderchest.menu_id dummy
#\Universal enderchest id system for enabling/disabling the right menus
scoreboard objectives add bbl.universal_active_enderchest.cooldown_switch dummy

#Tp to xyz
scoreboard objectives add bbl.tp_xyz.x dummy
scoreboard objectives add bbl.tp_xyz.y dummy
scoreboard objectives add bbl.tp_xyz.z dummy

#Close gui sound timer
scoreboard objectives add bbl.close_gui.stop_portal_sound dummy

#CDL Scoreboards
#Healing queue
scoreboard objectives add bbl.heal_queue dummy
#Damaging queue
scoreboard objectives add bbl.damage_queue dummy
#Damage timer
scoreboard objectives add bbl.damage_timer dummy
#HPMod queue (Shorthand for Healing/Damaging queues)
scoreboard objectives add bbl.hpm_queue dummy
#True damage health score
scoreboard objectives add bbl.p_health health

scoreboard objectives add bbl.hth.post_hp dummy
scoreboard objectives add bbl.hth.pre_hp dummy 
scoreboard objectives add bbl.hth.amount dummy

#Actions
#\Drop kb
scoreboard objectives add bbl.action.drop.kb minecraft.dropped:minecraft.knowledge_book
#\Drop anything
scoreboard objectives add bbl.action.drop.any minecraft.custom:minecraft.drop
#\Place spruce stairs
scoreboard objectives add bbl.action.place.spruce_stair minecraft.used:minecraft.spruce_stairs
#\Place barrel
scoreboard objectives add bbl.action.place.barrel minecraft.used:minecraft.barrel
#\Score kill
scoreboard objectives add bbl.action.kill totalKillCount
#\Shot bow
scoreboard objectives add bbl.action.shot.bow minecraft.used:minecraft.bow
#\Shot crossbow
scoreboard objectives add bbl.action.shot.crossbow minecraft.used:minecraft.crossbow
#\\\Mine
#\\Lapis
#\Stone
scoreboard objectives add bbl.action.mine.lapis.stone minecraft.mined:minecraft.lapis_ore
#\Deepslate
scoreboard objectives add bbl.action.mine.lapis.deepslate minecraft.mined:minecraft.deepslate_lapis_ore
#\\Spawner
scoreboard objectives add bbl.action.mine.spawner minecraft.mined:minecraft.spawner
#\\On death
#\On player respawn
scoreboard objectives add bbl.action.die.on_spawn minecraft.custom:minecraft.deaths
#\On initial death
scoreboard objectives add bbl.action.die.on_death minecraft.custom:minecraft.deaths
#\Jump
scoreboard objectives add bbl.action.jump minecraft.custom:minecraft.jump
#\Take damage
scoreboard objectives add bbl.action.take_damage minecraft.custom:minecraft.damage_taken
#\\Use
#\Totem
scoreboard objectives add bbl.action.use.totem minecraft.used:minecraft.totem_of_undying
#\Bundle
scoreboard objectives add bbl.action.use.bundle minecraft.used:minecraft.bundle
#\CoaS
scoreboard objectives add bbl.action.use.coas minecraft.used:minecraft.carrot_on_a_stick


#\Move detector
#Mute timer
scoreboard objectives add bbl.move.mute dummy
#\Walk
scoreboard objectives add bbl.move.walk minecraft.custom:minecraft.walk_one_cm
#\Sprint
scoreboard objectives add bbl.move.sprint minecraft.custom:minecraft.sprint_one_cm
#\Crouch
scoreboard objectives add bbl.move.crouch minecraft.custom:minecraft.crouch_one_cm
#\Climb
scoreboard objectives add bbl.move.climb minecraft.custom:minecraft.climb_one_cm
#\Horse
scoreboard objectives add bbl.move.horse minecraft.custom:minecraft.horse_one_cm
#\Swim
scoreboard objectives add bbl.move.swim minecraft.custom:minecraft.swim_one_cm
#\Walk underwater
scoreboard objectives add bbl.move.walk_underwater minecraft.custom:minecraft.walk_under_water_one_cm
#\Fly
scoreboard objectives add bbl.move.fly minecraft.custom:minecraft.fly_one_cm

##\Mouse
##\Pitch
###\Current
scoreboard objectives add bbl.move.mouse_angle.pitch.current dummy
###\Previous
scoreboard objectives add bbl.move.mouse_angle.pitch.past dummy
##\Yaw
###\Current
scoreboard objectives add bbl.move.mouse_angle.yaw.current dummy
###\Previous
scoreboard objectives add bbl.move.mouse_angle.yaw.past dummy
#\Listen
scoreboard objectives add bbl.move.mouse_angle.listen dummy

#Init
#\Next ID
execute unless score $next_id bbl.storage matches -2147483647..-2147483647 run scoreboard players set $next_id bbl.storage 1
#\Config
##\Lexica inject
execute unless score $bbl.config.lexica_inject bbl.storage matches -2147483647..2147483647 run scoreboard players set $bbl.config.lexica_inject bbl.storage 1
execute unless score $bbl.config.no_iframes bbl.storage matches -2147483647..2147483647 run scoreboard players set $bbl.config.no_iframes bbl.storage 0
#\Activve enderchest id
execute unless score $bbl.universal_active_enderchest.menu_id bbl.storage matches -2147483647..2147483647 run scoreboard players set $bbl.universal_active_enderchest.menu_id bbl.storage 1

#Set constants
scoreboard players set $-1 bbl.constant -1
scoreboard players set $0 bbl.constant 0
scoreboard players set $1 bbl.constant 1
scoreboard players set $2 bbl.constant 2
scoreboard players set $3 bbl.constant 3
scoreboard players set $4 bbl.constant 4
scoreboard players set $5 bbl.constant 5
scoreboard players set $6 bbl.constant 6
scoreboard players set $7 bbl.constant 7
scoreboard players set $8 bbl.constant 8
scoreboard players set $9 bbl.constant 9
scoreboard players set $10 bbl.constant 10

scoreboard players set $15 bbl.constant 15
scoreboard players set $20 bbl.constant 20
scoreboard players set $25 bbl.constant 25
scoreboard players set $30 bbl.constant 30
scoreboard players set $33 bbl.constant 33
scoreboard players set $35 bbl.constant 35
scoreboard players set $40 bbl.constant 40

scoreboard players set $50 bbl.constant 50
scoreboard players set $60 bbl.constant 60
scoreboard players set $67 bbl.constant 67
scoreboard players set $68 bbl.constant 68
scoreboard players set $70 bbl.constant 70
scoreboard players set $75 bbl.constant 75
scoreboard players set $80 bbl.constant 80
scoreboard players set $90 bbl.constant 90

scoreboard players set $100 bbl.constant 100
scoreboard players set $115 bbl.constant 115
scoreboard players set $140 bbl.constant 140
scoreboard players set $150 bbl.constant 150
scoreboard players set $200 bbl.constant 200
scoreboard players set $300 bbl.constant 300
scoreboard players set $600 bbl.constant 600

scoreboard players set $1000 bbl.constant 1000
scoreboard players set $1200 bbl.constant 1200

#No collide team
team add no_collide
team modify no_collide color white
team modify no_collide collisionRule never

#Full collide team
team add full_collide
team modify full_collide color white
team modify full_collide collisionRule always

#Colored teams
team add aqua
team modify aqua color aqua
team modify aqua collisionRule never

team add black
team modify black color black
team modify black collisionRule never

team add blue
team modify blue color blue
team modify blue collisionRule never

team add dark_aqua
team modify dark_aqua color dark_aqua
team modify dark_aqua collisionRule never

team add dark_blue
team modify dark_blue color dark_blue
team modify dark_blue collisionRule never

team add dark_gray
team modify dark_gray color dark_gray
team modify dark_gray collisionRule never

team add dark_green
team modify dark_green color dark_green
team modify dark_green collisionRule never

team add dark_purple
team modify dark_purple color dark_purple
team modify dark_purple collisionRule never

team add dark_red
team modify dark_red color dark_red
team modify dark_red collisionRule never

team add gold
team modify gold color gold
team modify gold collisionRule never

team add gray
team modify gray color gray
team modify gray collisionRule never

team add green
team modify green color green
team modify green collisionRule never

team add light_purple
team modify light_purple color light_purple
team modify light_purple collisionRule never
#pink*

team add red
team modify red color red
team modify red collisionRule never

team add white
team modify white color white
team modify white collisionRule never

team add yellow
team modify yellow color yellow
team modify yellow collisionRule never

#Forceload chunk
execute unless block 4206849 1 4206865 diamond_block run function bb:sys/build_chunk
#\Working shulker
setblock 4206862 1 4206865 air
setblock 4206862 1 4206865 black_shulker_box
