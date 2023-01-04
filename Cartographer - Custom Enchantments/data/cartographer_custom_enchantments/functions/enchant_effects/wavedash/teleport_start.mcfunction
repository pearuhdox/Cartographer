scoreboard players set $kill_flag ca.wavedash 0

execute anchored feet rotated ~ 0 positioned ^ ^0.75 ^2.5 facing entity @s eyes as @a[tag=ca.made_ranged_attack] if score @s ca.wavedash_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/wavedash/confirm_teleport

effect give @s blindness 2 0
effect give @s weakness 1 4
effect give @s slowness 1 4

tag @s remove is_wavedash

function #minecraft:cartographer/events/enchants_mob_hit/ranged/wavedash