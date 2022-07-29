execute if entity @s[scores={ca.tempest=1..}] run particle minecraft:current_down ~ ~ ~ 0.2 0.2 0.2 0 10 normal

execute if entity @s[scores={ca.ricochet=1..}] run particle minecraft:nautilus ~ ~ ~ 0 0 0 0.3 3 normal

execute if entity @s[scores={ca.fire_aspect=1..}] run data modify entity @s Fire set value 20

execute if entity @s[scores={ca.current=1..}] run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 1 10 normal

execute if entity @s[nbt={inGround:1b}] run tag @s remove custom_trident

execute positioned ~ -64 ~ if entity @s[tag=custom_trident,scores={ca.loyalty=1..},distance=..3] run function cartographer_custom_enchantments:enchant_effects/loyalty/convert