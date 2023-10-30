
#If the mob is NOT invulnerable, continue.
execute unless entity @s[nbt={active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run function bb:lib/hpm/mob_damage_true/not_invulnerable

#Cleanup & reset
scoreboard players reset @s bbl.damage_queue

#Call Invul Timer for [Cartographer] Mob Abilities
scoreboard players set $invul_time_check invul 25
