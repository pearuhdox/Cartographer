execute if score $melee ca.duelist matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal

execute if score $melee ca.duelist matches 1 as @s run scoreboard players set @s ca.damage_queue 2
execute if score $melee ca.duelist matches 2 as @s run scoreboard players set @s ca.damage_queue 5
execute if score $melee ca.duelist matches 3 as @s run scoreboard players set @s ca.damage_queue 7
execute if score $melee ca.duelist matches 4 as @s run scoreboard players set @s ca.damage_queue 10
execute if score $melee ca.duelist matches 5 as @s run scoreboard players set @s ca.damage_queue 12

execute if score $melee ca.duelist matches 1 as @s run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $melee ca.duelist matches 3 as @s run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $melee ca.duelist matches 5 as @s run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass

execute if score $melee ca.duelist matches 1.. as @s run function cartographer_custom_enchantments:helper/damage/macro_setup
execute if score $melee ca.duelist matches 1.. as @s run function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

function #minecraft:cartographer/events/enchants_mob_hit/melee/duelist