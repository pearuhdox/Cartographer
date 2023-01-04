function #minecraft:cartographer/events/enchantments/melee/evocation

scoreboard players operation $evocation ca.evocation = @s ca.evocation

execute if entity @s[scores={ca.atk_time=0,ca.evocation=1..,ca.sprint=0..,ca.sneak=0},tag=can_crit] run function cartographer_custom_enchantments:enchant_effects/evocation/cage
execute if entity @s[scores={ca.atk_time=0,ca.evocation=1..,ca.sprint=1..,ca.sneak=0},tag=!can_crit] run function cartographer_custom_enchantments:enchant_effects/evocation/spear
execute if entity @s[scores={ca.atk_time=0,ca.evocation=1..,ca.sneak=1..}] run function cartographer_custom_enchantments:enchant_effects/evocation/wave

execute if entity @s[scores={ca.atk_time=0,ca.evocation=1..},tag=can_crit] run playsound minecraft:entity.evoker.prepare_attack player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={ca.atk_time=0,ca.evocation=1..,ca.sprint=1..},tag=!can_crit] run playsound minecraft:entity.evoker.prepare_attack player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={ca.atk_time=0,ca.evocation=1..,ca.sneak=1..}] run playsound minecraft:entity.evoker.prepare_attack player @a[distance=..8] ~ ~ ~ 0.5 2

execute if score @s ca.atk_time matches 0 if score @s ca.evocation matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation/branch/attack