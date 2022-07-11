execute if entity @s[tag=reflect_ranged] run tag @s remove reflecting_ranged
execute if entity @s[tag=reflect_melee] run tag @s remove reflecting_melee

#Call Invul Timer for Mob Abilities
execute if entity @s[predicate=cartographer_mob_abilities:is_invulnerable] run scoreboard players set $invul_time_check invul 25
execute if score $proj_check invul matches 1.. if entity @s[predicate=cartographer_mob_abilities:has_proj_prot] run scoreboard players set $invul_time_check invul 25

scoreboard players set $proj_check invul 0