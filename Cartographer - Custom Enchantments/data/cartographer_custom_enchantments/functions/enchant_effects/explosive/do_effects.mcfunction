execute if score $cauterize ca.explosive matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/other

execute if score $flame ca.explosive matches 1.. run data merge entity @s {Fire:101}

execute if score $frost ca.explosive matches 1.. run scoreboard players set @s ca.frost_tier 2
execute if score $frost ca.explosive matches 1.. run scoreboard players set @s ca.frost_time 81

execute if score $expose ca.explosive matches 1.. run effect give @s bad_omen 4 1

execute if score $bleed ca.explosive matches 1.. if entity @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 1
execute if score $bleed ca.explosive matches 1.. unless entity @s[scores={ca.effect_bleed=1..}] run scoreboard players set @s ca.effect_bleed 4
execute if score $bleed ca.explosive matches 1.. run scoreboard players add @s ca.bleed_potency 3

execute if score $electrode ca.explosive matches 1.. run scoreboard players set @s ca.effect_shock 4

execute if score $infect ca.explosive matches 1.. run scoreboard players set @s ca.effect_infect 4

execute if score $flash ca.explosive matches 1.. run function cartographer_custom_enchantments:enchant_effects/flash

execute if score $possess ca.explosive matches 1.. run function cartographer_custom_enchantments:enchant_effects/possess