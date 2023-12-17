execute if score $duelist ca.var matches 1 if entity @s[type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 2
execute if score $duelist ca.var matches 2 if entity @s[type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 5
execute if score $duelist ca.var matches 3 if entity @s[type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 7
execute if score $duelist ca.var matches 4 if entity @s[type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 10
execute if score $duelist ca.var matches 5.. if entity @s[type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 12

function cartographer_custom_enchantments:helper/damage/macro_setup
execute if entity @s[type=#cartographer_custom_enchantments:duelist] run function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments


execute if score $duelist ca.var matches 1 if entity @s[type=#cartographer_custom_enchantments:duelist] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $duelist ca.var matches 3 if entity @s[type=#cartographer_custom_enchantments:duelist] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $duelist ca.var matches 5 if entity @s[type=#cartographer_custom_enchantments:duelist] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass

#Debug Message
function #minecraft:cartographer/events/enchants_mob_hit/melee/duelist