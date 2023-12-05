#function #minecraft:cartographer/events/enchantments/ranged/piercing

scoreboard players operation $ranged ca.piercing = @s ca.piercing

execute as @e[type=arrow,sort=nearest,limit=3,distance=..5,nbt=!{inGround:1b}] at @s run function cartographer_custom_enchantments:enchant_effects/piercing/modify_arrow