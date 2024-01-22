#Cauterize Cleanse
execute if entity @s[tag=ca.cleanse_fire] run function cartographer_custom_enchantments:enchant_effects/on_hit/cauterize/cleanse


#Tempo Theft Debuff
execute if score @s ca.temp_warp matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/tempo_theft/effect_mob

#Current Drag Effects
execute if score @s ca.current_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/current_drag

#Rally Mark
execute as @s[tag=ca.rally_marked] run function cartographer_custom_enchantments:enchant_effects/rally/mark_passive

#Cleanse the Skip Smouldering Tag
tag @s remove skip_cauterize

#Do Cauterize Checks
execute if score @s ca.cauterize_time matches 1 run scoreboard players set @s ca.cauterize_time 0
execute if predicate cartographer_custom_enchantments:hex_eater/is_on_fire if entity @a[distance=..40,tag=ca.has_cauterize] run function cartographer_custom_enchantments:enchant_effects/on_hit/cauterize/track_fire

#Do Hex Eater Checks
execute if score @s ca.hex_eater_time matches 1.. run scoreboard players remove @s ca.hex_eater_time 1
execute if score @s ca.hex_eater_time matches 1.. run scoreboard players set @s ca.hex_eater_time_cleanse 0
execute if entity @a[distance=..40,tag=ca.has_hex_eater] run function cartographer_custom_enchantments:enchant_effects/on_hit/hex_eater/track

execute if score @s ca.hex_eater_time_cleanse matches 1.. run scoreboard players remove @s ca.hex_eater_time_cleanse 1
execute if score @s ca.hex_eater_time_cleanse matches 1 run function cartographer_custom_enchantments:enchant_effects/on_hit/hex_eater/cleanse


execute if score @s ca.deadeye_time matches 1.. run scoreboard players remove @s ca.deadeye_time 1

#Setup Ricochet Score
execute unless score @s ca.ricochet_cooldown matches 0.. run scoreboard players set @s ca.ricochet_cooldown 0
execute if score @s ca.ricochet_cooldown matches 1.. run scoreboard players remove @s ca.ricochet_cooldown 1

#Tick down Starfall cooldown
execute if score @s ca.starfall_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/starfall/starfall_time_mob

execute if score @s ca.allow_fast_attack matches 1.. run scoreboard players remove @s ca.allow_fast_attack 1