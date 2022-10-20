execute unless predicate cd:has_totem run kill @s

execute if predicate cd:has_totem if entity @s[type=#bb:undead] run effect give @s instant_health 1 99 true
execute if predicate cd:has_totem if entity @s[type=!#bb:undead] run effect give @s instant_damage 1 99 true