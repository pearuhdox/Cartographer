execute if entity @s[tag=custom_trident] run function cartographer_custom_enchantments:enchant_effects/trident_visuals

#execute if entity @s[nbt=!{inGround:1b}] run scoreboard players add @s ca.lifetime 1

execute if entity @s[tag=ca.loyalty] if data entity @s {inGround:1b} run function cartographer_custom_enchantments:enchant_effects/loyalty/convert