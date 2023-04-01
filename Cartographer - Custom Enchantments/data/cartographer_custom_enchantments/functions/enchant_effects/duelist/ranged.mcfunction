execute if entity @s[tag=is_duelist_1,type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 2
execute if entity @s[tag=is_duelist_2,type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 5
execute if entity @s[tag=is_duelist_3,type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 7
execute if entity @s[tag=is_duelist_4,type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 10
execute if entity @s[tag=is_duelist_5,type=#cartographer_custom_enchantments:duelist] run scoreboard players set @s ca.damage_queue 12

execute if entity @s[type=#cartographer_custom_enchantments:duelist] run function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass

execute if entity @s[tag=is_duelist_1,type=#cartographer_custom_enchantments:duelist] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if entity @s[tag=is_duelist_3,type=#cartographer_custom_enchantments:duelist] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if entity @s[tag=is_duelist_5,type=#cartographer_custom_enchantments:duelist] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass

tag @e[type=#bb:hostile,tag=is_duelist_1,distance=..12] remove is_duelist_1
tag @e[type=#bb:hostile,tag=is_duelist_2,distance=..12] remove is_duelist_2
tag @e[type=#bb:hostile,tag=is_duelist_3,distance=..12] remove is_duelist_3
tag @e[type=#bb:hostile,tag=is_duelist_4,distance=..12] remove is_duelist_4
tag @e[type=#bb:hostile,tag=is_duelist_5,distance=..12] remove is_duelist_5

#Debug Message
function #minecraft:cartographer/events/enchants_mob_hit/melee/duelist