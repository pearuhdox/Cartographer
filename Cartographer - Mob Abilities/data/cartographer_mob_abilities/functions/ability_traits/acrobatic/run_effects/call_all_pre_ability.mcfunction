#Start by running Pre-Acrobatic effects
execute if entity @s[tag=!ca.has_kited,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:ability_traits/acrobatic/run_kite/ability
execute if entity @s[tag=ca.acrobatic_gap_close,tag=!ca.has_gap_closed,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:ability_traits/acrobatic/run_effects/gap_close
execute if entity @s[tag=ca.acrobatic_strafe,tag=!ca.has_strafed,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:ability_traits/acrobatic/run_effects/strafe
execute if entity @s[tag=ca.acrobatic_retreat,tag=!ca.has_retreated,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:ability_traits/acrobatic/run_effects/retreat