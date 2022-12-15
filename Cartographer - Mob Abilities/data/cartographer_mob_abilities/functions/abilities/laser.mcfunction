#Trait warning visual
function cartographer_mob_abilities:ability_traits/trait_warnings/mob

scoreboard players set @s cooldown 16

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

execute store result score $laser ca.ability_dmg run attribute @s[type=!shulker] minecraft:generic.attack_damage get
execute store result score $laser ca.ability_dmg run attribute @s[type=shulker] minecraft:generic.attack_damage get


scoreboard players set $laser_bla ca.var 0
scoreboard players set $laser_gla ca.var 0
scoreboard players set $laser_ove ca.var 0
scoreboard players set $laser_ven ca.var 0
scoreboard players set $laser_zep ca.var 0
scoreboard players set $laser_hor ca.var 0
scoreboard players set $laser_vol ca.var 0
scoreboard players set $laser_alc ca.var 0
scoreboard players set $laser_web ca.var 0
scoreboard players set $laser_cur ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $laser_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $laser_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $laser_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $laser_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $laser_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $laser_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $laser_vol ca.var 1
execute if entity @s[tag=ca.webbing] run scoreboard players set $laser_web ca.var 1
execute if entity @s[tag=ca.cursing] run scoreboard players set $laser_cur ca.var 1

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:abilities/laser/alchemist_save

scoreboard players set @s ca.raycast 32
execute as @s positioned ~ ~1 ~ facing entity @p feet run function cartographer_mob_abilities:abilities/laser/raycast

#Run non onhit traits
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit



#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
kill @e[type=armor_stand,tag=laser_marker,distance=..1,limit=1]

function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test