function #minecraft:cartographer/events/enchants_mob_hit/melee/executioner

execute unless predicate cartographer_core:has_totem run kill @s

execute if predicate cartographer_core:has_totem if entity @s[type=#bb:undead] run effect give @s instant_health 1 99 true
execute if predicate cartographer_core:has_totem if entity @s[type=!#bb:undead] run effect give @s instant_damage 1 99 true