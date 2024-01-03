function #minecraft:cartographer/events/enchants_mob_hit/melee/executioner

execute unless predicate cartographer_core:has_totem run kill @s

execute if predicate cartographer_core:has_totem if entity @s[type=#bb:undead] run effect give @s instant_health 1 99 true
execute if predicate cartographer_core:has_totem if entity @s[type=!#bb:undead] run effect give @s instant_damage 1 99 true

playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:item.armor.equip_chain player @a[distance=..8] ~ ~ ~ 2 0.5
playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5

particle minecraft:witch ~ ~1 ~ 0.5 0.2 0.5 0 15 normal
particle minecraft:squid_ink ~ ~0.5 ~ 0.2 0.2 0.2 0.2 5 normal