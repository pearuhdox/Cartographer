function #minecraft:cartographer/events/enchantments/ranged/overcharge

scoreboard players operation $ranged ca.ov_tier = @s ca.ov_tier

execute if entity @s[type=player,scores={ca.overcharge=1..,ca.ov_tier=2..}] run playsound minecraft:delta.entity.generic.explode player @s ~ ~ ~ 0.5 2 1
execute if entity @s[type=player,scores={ca.overcharge=1..,ca.ov_tier=2..}] run playsound minecraft:entity.dolphin.death player @s ~ ~ ~ 0.5 1.5 1
execute if entity @s[type=player,scores={ca.overcharge=1..,ca.ov_tier=2..}] positioned ~ ~1.4 ~ run particle minecraft:wax_off ^ ^ ^1 0.2 0.2 0.2 1 5 normal

scoreboard players set @s ca.ov_tier 0

scoreboard players operation $damage catt.var = @s catt.stat.range

execute as @e[type=arrow,sort=nearest,limit=3,distance=..5] at @s run function cartographer_custom_enchantments:enchant_effects/overcharge/branch