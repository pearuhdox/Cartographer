execute unless entity @s[tag=ca.pulse] run scoreboard players set @s mob_move_red 23
execute if entity @s[scores={ability_charge=2..3}] if entity @s[tag=ca.pulse] run scoreboard players set @s mob_move_red 8

execute unless entity @s[scores={ability_charge=1..}] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute unless entity @s[scores={ability_charge=3..4}] run playsound minecraft:block.fire.ambient hostile @a[distance=..16] ~ ~ ~ 2 0.5
execute unless entity @s[scores={ability_charge=1..}] run playsound minecraft:block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 2 0.5
execute if entity @s[scores={ability_charge=1}] run playsound minecraft:block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 2 0.7
execute if entity @s[scores={ability_charge=2}] run playsound minecraft:block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 2 0.9

execute unless entity @s[scores={ability_charge=3..4}] run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute unless entity @s[scores={ability_charge=3..4}] if entity @s[tag=ca.pulse] run function cartographer_mob_abilities:charge/nova/pulse/vfx
execute unless entity @s[scores={ability_charge=3..4}] unless entity @s[tag=ca.pulse] run function cartographer_mob_abilities:charge/nova/normal/vfx

execute unless entity @s[scores={ability_charge=3..4}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=4}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:abilities/nova