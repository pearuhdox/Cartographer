execute if entity @s[tag=ca.blazing] run particle lava ~ ~0.25 ~ 0.5 0 0.5 0 15 normal
execute if entity @s[tag=ca.glacial] run particle item_snowball ~ ~0.25 ~ 0.5 0 0.5 0 15 normal
execute if entity @s[tag=ca.horrifying] run particle dust 0.302 0.2 0.761 1 ~ ~0.25 ~ 0.5 0 0.5 0 15 normal
execute if entity @s[tag=ca.overloading] run particle wax_off ~ ~0.25 ~ 0.5 0 0.5 1 15 normal
execute if entity @s[tag=ca.venemous] run particle item_slime ~ ~0.25 ~ 0.5 0 0.5 0.1 15 normal
execute if entity @s[tag=ca.zephyrous] run particle cloud ~ ~0.25 ~ 0.5 0 0.5 0.05 15 normal

particle explosion ~ ~0.25 ~ 0.75 0 0.75 0 1 normal
playsound minecraft:entity.generic.explode hostile @a[distance=..8] ~ ~ ~ 0.5 2
playsound minecraft:enchant.thorns.hit hostile @a[distance=..20] ~ ~ ~ 2 0.5

execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2,sort=nearest,limit=1] at @s run scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2,sort=nearest,limit=1] at @s unless entity @s[tag=no_cdl_msg] run scoreboard players set @s cdl.death_id 310213
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2,sort=nearest,limit=1] at @s run tag @s remove no_cdl_msg
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2,sort=nearest,limit=1] at @s run function cd:lib/player/damage/normal

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2,sort=nearest,limit=1] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:charge/needle/projectile/call_traits

kill @s