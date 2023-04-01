execute if entity @s[tag=is_tempest_1] run scoreboard players set @s ca.damage_queue 3
execute if entity @s[tag=is_tempest_2] run scoreboard players set @s ca.damage_queue 6
execute if entity @s[tag=is_tempest_3] run scoreboard players set @s ca.damage_queue 9
execute if entity @s[tag=is_tempest_4] run scoreboard players set @s ca.damage_queue 12
execute if entity @s[tag=is_tempest_5] run scoreboard players set @s ca.damage_queue 15

execute if entity @s run function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass

tag @s[type=#bb:hostile,tag=is_tempest_1] remove is_tempest_1
tag @s[type=#bb:hostile,tag=is_tempest_2] remove is_tempest_2
tag @s[type=#bb:hostile,tag=is_tempest_3] remove is_tempest_3
tag @s[type=#bb:hostile,tag=is_tempest_4] remove is_tempest_4
tag @s[type=#bb:hostile,tag=is_tempest_5] remove is_tempest_5

function #minecraft:cartographer/events/enchants_mob_hit/ranged/tempest