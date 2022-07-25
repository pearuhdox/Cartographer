execute if score $explosive ca.cauterize matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/other

execute if score $explosive ca.flame matches 1.. run data merge entity @s {Fire:81}
execute if score $explosive ca.frost matches 1.. run scoreboard players set @s ca.frost_tier 2
execute if score $explosive ca.frost matches 1.. run scoreboard players set @s ca.frost_time 81

execute if score $explosive ca.expose matches 1.. run effect give @s bad_omen 4 1

execute if score $explosive ca.bleed matches 1.. if entity @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 1
execute if score $explosive ca.bleed matches 1.. unless entity @s[scores={ca.effect_bleed=1..}] run scoreboard players set @s ca.effect_bleed 4
execute if score $explosive ca.bleed matches 1.. run scoreboard players add @s ca.bleed_potency 2

execute if score $explosive ca.electrode matches 1.. run scoreboard players set @s ca.effect_shock 4
execute if score $explosive ca.infection matches 1.. run scoreboard players set @s ca.effect_infect 4

execute if score $explosive ca.flash matches 1.. run function cartographer_custom_enchantments:enchant_effects/flash

execute if score $explosive ca.possess matches 1.. run function cartographer_custom_enchantments:enchant_effects/possess