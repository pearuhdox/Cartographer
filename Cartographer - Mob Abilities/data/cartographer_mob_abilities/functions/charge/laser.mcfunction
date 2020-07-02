execute unless entity @s[scores={ability_charge=100}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=1..99}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.blaze.shoot hostile @s ~ ~ ~ 0.8 2

execute if entity @s[scores={ability_charge=1..99}] run effect give @s glowing 1 0 true

execute if entity @s[scores={ability_charge=1..99}] run effect give @s slowness 1 6 true

execute if entity @s[scores={ability_charge=1..99}] run tp @s ~ ~ ~ facing entity @p feet

execute if entity @s[scores={ability_charge=1..99}] run scoreboard players set @s helper_raycast 20

execute if entity @s[scores={ability_charge=1..99}] positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/laser_raycast

execute if entity @s[scores={ability_charge=100}] run function cartographer_mob_abilities:abilities/laser

