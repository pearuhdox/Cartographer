execute as @s[tag=custom_trident] at @s run function cartographer_custom_enchantments:enchant_effects/trident_visuals

#execute if entity @s[nbt=!{inGround:1b}] run scoreboard players add @s ca.lifetime 1

execute as @s[tag=loyalty] at @s if entity @s[nbt={inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/loyalty/convert