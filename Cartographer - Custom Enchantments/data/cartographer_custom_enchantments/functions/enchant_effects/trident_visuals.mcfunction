execute if entity @s[scores={ca.tempest=1..}] run particle minecraft:current_down ~ ~ ~ 0.2 0.2 0.2 0 10 normal

execute if entity @s[scores={ca.ricochet=1..}] run particle minecraft:nautilus ~ ~ ~ 0 0 0 0.3 3 normal

execute if entity @s[scores={ca.fire_aspect=1..}] run data modify entity @s Fire set value 20

execute if entity @s[scores={ca.current=1..}] run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 1 10 normal

execute if entity @s[scores={ca.collapse=1..}] run particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0.05 4 normal

execute if entity @s[nbt={inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/trident_ground_branch

execute if entity @s[tag=is_ricocheting,nbt={DealtDamage:1b}] positioned ~ ~1.3 ~ run function cartographer_custom_enchantments:enchant_effects/ricochet/trident_position


execute if entity @s[tag=loyalty_checked,tag=!custom_trident,tag=!current_loyalty_trident] run kill @s

execute if score @s ca.ricochet_cooldown matches 1.. run function cartographer_custom_enchantments:enchant_effects/ricochet/scheduled