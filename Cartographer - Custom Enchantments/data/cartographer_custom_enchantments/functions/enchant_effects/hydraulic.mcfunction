scoreboard players operation $hydraul ca.tempest = @s ca.tempest
scoreboard players operation $hydraul ca.hydraulic = @s ca.hydraulic

execute if entity @e[type=trident,distance=..3,sort=nearest,limit=1] run function cartographer_custom_enchantments:enchant_effects/hydraulic/trident_branch

scoreboard players set $hydraul ca.tempest 0
scoreboard players set $hydraul ca.hydraulic 0

function #minecraft:cartographer/events/enchantments/ranged/hydraulic