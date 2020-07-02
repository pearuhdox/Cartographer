
playsound minecraft:entity.firework_rocket.launch player @a[distance=..8] ~ ~ ~ 5 1.5

particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal

execute if entity @s[scores={second_wind=1..},tag=bracing] run function cartographer_custom_enchantments:loop/enchant_effects/second_wind

execute if entity @s[scores={second_wind=1..,second_wind_cool=..240},tag=!bracing] run scoreboard players add @s second_wind_cool 10
execute if entity @s[scores={second_wind=1..,second_wind_cool=240..249},tag=!bracing] run title @s actionbar {"text":"Second Wind has recharged!","color":"aqua","italic":false}

effect clear @s resistance

tag @s remove evading
tag @s remove bracing