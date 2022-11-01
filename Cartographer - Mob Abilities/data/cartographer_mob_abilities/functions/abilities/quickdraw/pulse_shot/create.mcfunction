execute anchored eyes run summon armor_stand ^ ^-0.5 ^1 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Pose:{LeftArm:[320f,90f,0f],RightArm:[320f,270f,0f],Head:[180f,0f,0f]},Tags:["pulse_shot_projectile"]}

#Add tags to the missile
scoreboard players set $ps_bla ca.var 0
scoreboard players set $ps_gla ca.var 0
scoreboard players set $ps_ove ca.var 0
scoreboard players set $ps_ven ca.var 0
scoreboard players set $ps_zep ca.var 0
scoreboard players set $ps_hor ca.var 0
scoreboard players set $ps_vol ca.var 0
scoreboard players set $ps_alc ca.var 0
scoreboard players set $ps_web ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $ps_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $ps_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $ps_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $ps_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $ps_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $ps_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $ps_vol ca.var 1
execute if entity @s[tag=ca.webbing] run scoreboard players set $ps_web ca.var 1

#Set the damage
function cartographer_mob_abilities:abilities/quickdraw/calc_damage

#Clear the storage
data remove storage cartographer_mob_abilities:info pulse_shot.Tags

#Copy trait tags to storage
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:abilities/quickdraw/pulse_shot/trait_copy

#Add base tag
data modify storage cartographer_mob_abilities:info pulse_shot.Tags append value "pulse_shot_projectile"


#Aim the projectile and set tags appropriately
execute anchored eyes positioned ^ ^-0.5 ^1 as @e[type=armor_stand,tag=pulse_shot_projectile,tag=!aimed,limit=1,sort=nearest,distance=..3] run function cartographer_mob_abilities:abilities/quickdraw/pulse_shot/aim

