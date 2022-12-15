scoreboard players set @s cooldown 10

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
particle minecraft:poof ~ ~0.5 ~ 0.25 0 0.25 0.3 20 normal

playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 2 2
playsound minecraft:block.anvil.land hostile @a[distance=..20] ~ ~ ~ 2 2



#Create the traps and properly rotate them
execute anchored eyes positioned ^ ^ ^1 facing entity @p feet run function cartographer_mob_abilities:projectiles/behavior/trap/create_projectiles

#Get damage value of mob for projectiles
execute store result score @s[type=!shulker] ca.ability_dmg run attribute @s minecraft:generic.attack_damage get
execute store result score @s[type=shulker] ca.ability_dmg run attribute @s minecraft:generic.armor_toughness get
scoreboard players operation $trap_damage ca.ability_dmg = @s ca.ability_dmg

#Add tags to the traps
scoreboard players set $trap_bla ca.var 0
scoreboard players set $trap_gla ca.var 0
scoreboard players set $trap_ove ca.var 0
scoreboard players set $trap_ven ca.var 0
scoreboard players set $trap_zep ca.var 0
scoreboard players set $trap_hor ca.var 0
scoreboard players set $trap_vol ca.var 0
scoreboard players set $trap_alc ca.var 0
scoreboard players set $trap_web ca.var 0
scoreboard players set $trap_cur ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $trap_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $trap_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $trap_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $trap_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $trap_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $trap_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $trap_vol ca.var 1
execute if entity @s[tag=ca.webbing] run scoreboard players set $trap_web ca.var 1
execute if entity @s[tag=ca.cursing] run scoreboard players set $trap_cur ca.var 1

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:projectiles/behavior/trap/alchemist_save

execute as @e[type=armor_stand,tag=trap_projectile,tag=!checked,limit=3,sort=nearest] run function cartographer_mob_abilities:projectiles/behavior/trap/set_traits


tag @e[tag=trap_projectile,sort=nearest,tag=!checked,limit=5] add checked

tp @s ~ ~ ~ facing entity @p feet
scoreboard players set @s co_y 4
scoreboard players set @s co_send -6
function motion:motion/push

#Run not on hit traits
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit



#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate


#say test
