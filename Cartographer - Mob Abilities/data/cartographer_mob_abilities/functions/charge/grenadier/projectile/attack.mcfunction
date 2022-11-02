execute if entity @s[tag=ca.blazing] run particle lava ~ ~0.4 ~ 2 0.3 2 0 20 normal
execute if entity @s[tag=ca.glacial] run particle item_snowball ~ ~0.4 ~ 2 0.3 2 0 40 normal
execute if entity @s[tag=ca.horrifying] run particle sculk_soul ~ ~0.4 ~ 2 0.3 2 0.1 30 normal
execute if entity @s[tag=ca.overloading] run particle electric_spark ~ ~0.4 ~ 2 0.3 2 1 40 normal
execute if entity @s[tag=ca.venemous] run particle item_slime ~ ~0.4 ~ 2 0.3 2 0.1 40 normal
execute if entity @s[tag=ca.zephyrous] run particle cloud ~ ~0.4 ~ 2 0.3 2 0.05 40 normal
execute if entity @s[tag=ca.alchemist] run particle effect ~ ~0.4 ~ 2 0.3 2 0.05 40 normal
execute if entity @s[tag=ca.webbing] run particle block cobweb ~ ~0.4 ~ 2 0.3 2 0.05 40 normal
execute if entity @s[tag=ca.cursing] run particle squid_ink ~ ~0.4 ~ 2 0.3 2 0.05 1 normal


particle explosion ~ ~0.25 ~ 1.5 0 1.5 0 8 normal
playsound minecraft:entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 2 1

scoreboard players set $explosion ca.dmg_type 1
scoreboard players set $projectile ca.dmg_type 1

scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=..3,sort=nearest,limit=1] cdl.damage_queue = @s ca.ability_dmg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3,sort=nearest,limit=1] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310212
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3,sort=nearest,limit=1] at @s run tag @s remove no_cdl_msg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3,sort=nearest,limit=1] at @s run function cartographer_mob_abilities:helper/epf/damage_reduce/ask_reduction
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3,sort=nearest,limit=1] at @s run function cd:lib/player/damage/normal

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3,sort=nearest,limit=1] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:charge/grenadier/projectile/call_traits

kill @s