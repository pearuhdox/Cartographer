#Ashen Debuff (Smouldering)
execute if entity @s[tag=ca.cleanse_fire] run function cartographer_custom_enchantments:enchant_effects/cauterize/cleanse


#Tempo Theft Debuff
execute if score @s ca.temp_warp matches 1.. run function cartographer_custom_enchantments:enchant_effects/tempo_theft/effect_mob

#Current Drag Effects
execute if score @s ca.current_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/current_drag

#Rally Mark
execute as @s[tag=ca.rally_marked] run function cartographer_custom_enchantments:enchant_effects/rally/mark_passive

#Recoil movement pieces
execute as @s[type=creeper,tag=ca.recoil_movement,tag=ca.needs_move] at @s run function cartographer_custom_enchantments:enchant_effects/recoil/move_creeper

#Cleanse the Skip Smouldering Tag
tag @s remove skip_cauterize

#Do Cauterize Checks
execute if score @s ca.cauterize_time matches 1 run scoreboard players set @s ca.cauterize_time 0
execute if predicate cartographer_custom_enchantments:hex_eater/is_on_fire if entity @a[distance=..40,scores={ca.cauterize=1..}] run function cartographer_custom_enchantments:enchant_effects/cauterize/track_fire
execute unless entity @s[tag=ca.cauterize_track_check] if predicate cartographer_custom_enchantments:hex_eater/is_on_fire if entity @a[distance=..40,scores={ca.off_cauterize=1..}] run function cartographer_custom_enchantments:enchant_effects/cauterize/track_fire
tag @s remove ca.cauterize_track_check

#Remove Deadeye Tag
execute if entity @s[tag=ca.second_wind_marked] run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.35 0.35 0.35 0.03 1 normal

#Do bonus damage to Multishot Deadeye and reset
execute if score @s ca.deadeye matches 2.. run function cartographer_custom_enchantments:enchant_effects/deadeye/multi_hit
scoreboard players set @s ca.deadeye 0

execute if score @s ca.deadeye_time matches 1.. run scoreboard players remove @s ca.deadeye_time 1

#Setup Ricochet Score
execute unless score @s ca.ricochet_cooldown matches 0.. run scoreboard players set @s ca.ricochet_cooldown 0
execute if score @s ca.ricochet_cooldown matches 1.. run scoreboard players remove @s ca.ricochet_cooldown 1

#Tick down Starfall cooldown
execute if score @s ca.starfall_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/starfall/starfall_time_mob