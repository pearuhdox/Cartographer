execute as @a[tag=hydraul_loyalty_interaction] at @s as @e[type=trident,tag=custom_trident,scores={ca.loyalty=1..},sort=nearest,distance=..5,limit=1] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/convert

tag @a remove hydraul_loyalty_interaction