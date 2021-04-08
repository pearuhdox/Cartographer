execute if entity @s[tag=tempest_1] run particle minecraft:current_down ~ ~ ~ 0.2 0.2 0.2 0 10 normal
execute if entity @s[tag=tempest_2] run particle minecraft:current_down ~ ~ ~ 0.2 0.2 0.2 0 10 normal
execute if entity @s[tag=tempest_3] run particle minecraft:current_down ~ ~ ~ 0.2 0.2 0.2 0 10 normal
execute if entity @s[tag=tempest_4] run particle minecraft:current_down ~ ~ ~ 0.2 0.2 0.2 0 10 normal
execute if entity @s[tag=tempest_5] run particle minecraft:current_down ~ ~ ~ 0.2 0.2 0.2 0 10 normal

execute if entity @s[tag=ricochet_1] run particle minecraft:nautilus ~ ~ ~ 0 0 0 0.3 3 normal
execute if entity @s[tag=ricochet_2] run particle minecraft:nautilus ~ ~ ~ 0 0 0 0.3 3 normal
execute if entity @s[tag=ricochet_3] run particle minecraft:nautilus ~ ~ ~ 0 0 0 0.3 3 normal

execute if entity @s[tag=fire_aspect_1] run data modify entity @s Fire set value 20
execute if entity @s[tag=fire_aspect_2] run data modify entity @s Fire set value 20
execute if entity @s[tag=fire_aspect_3] run data modify entity @s Fire set value 20

execute if entity @s[tag=current] run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 1 10 normal

execute if entity @s[tag=pin_arrow] run particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=frost_arrow] run particle minecraft:item_snowball ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=volatile_arrow] run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[tag=tempo_arrow] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal

execute if entity @s[nbt={inGround:1b}] run tag @s remove custom_trident
execute if entity @s[nbt={inGround:1b}] run tag @s remove tempest_1
execute if entity @s[nbt={inGround:1b}] run tag @s remove tempest_2
execute if entity @s[nbt={inGround:1b}] run tag @s remove tempest_3
execute if entity @s[nbt={inGround:1b}] run tag @s remove tempest_4
execute if entity @s[nbt={inGround:1b}] run tag @s remove tempest_5
execute if entity @s[nbt={inGround:1b}] run tag @s remove ricochet_1
execute if entity @s[nbt={inGround:1b}] run tag @s remove ricochet_2
execute if entity @s[nbt={inGround:1b}] run tag @s remove ricochet_3