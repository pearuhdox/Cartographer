execute if entity @s[tag=is_hunter_1,type=#cartographer_custom_enchantments:hunter] run scoreboard players set @s ca.damage_queue 2
execute if entity @s[tag=is_hunter_2,type=#cartographer_custom_enchantments:hunter] run scoreboard players set @s ca.damage_queue 5
execute if entity @s[tag=is_hunter_3,type=#cartographer_custom_enchantments:hunter] run scoreboard players set @s ca.damage_queue 7
execute if entity @s[tag=is_hunter_4,type=#cartographer_custom_enchantments:hunter] run scoreboard players set @s ca.damage_queue 10
execute if entity @s[tag=is_hunter_5,type=#cartographer_custom_enchantments:hunter] run scoreboard players set @s ca.damage_queue 12

execute if entity @s[type=#cartographer_custom_enchantments:hunter] run function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass

execute if entity @s[tag=is_hunter_1,type=#cartographer_custom_enchantments:hunter] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if entity @s[tag=is_hunter_3,type=#cartographer_custom_enchantments:hunter] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if entity @s[tag=is_hunter_5,type=#cartographer_custom_enchantments:hunter] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass

tag @s[type=#bb:hostile,tag=is_hunter_1] remove is_hunter_1
tag @s[type=#bb:hostile,tag=is_hunter_2] remove is_hunter_2
tag @s[type=#bb:hostile,tag=is_hunter_3] remove is_hunter_3
tag @s[type=#bb:hostile,tag=is_hunter_4] remove is_hunter_4
tag @s[type=#bb:hostile,tag=is_hunter_5] remove is_hunter_5

#Debug Message
function #minecraft:cartographer/events/enchants_mob_hit/melee/hunter