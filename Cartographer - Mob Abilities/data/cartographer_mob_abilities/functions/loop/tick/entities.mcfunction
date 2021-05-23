#Armor Stand Effects
execute as @s[type=armor_stand] at @s run function cartographer_mob_abilities:loop/tick/armor_stand_branch

#Run On-Death Effects
execute as @s[type=item,nbt={Item:{tag:{DeathEffect:1}}}] at @s run function cartographer_mob_abilities:loop/tick/run_death_effects

#Run Invulnerable Notices
execute if score $invul_time_check invul matches 1.. as @s[type=#cartographer_core:hostile] if entity @s[predicate=cartographer_mob_abilities:is_invulnerable] at @s run function cartographer_mob_abilities:loop/tick/invulnerable_test

#Run Movement Disable and Melee Damage Disable
execute if entity @s[scores={mob_move_dis=1..}] run function cartographer_mob_abilities:loop/tick/disablers/move
execute if entity @s[scores={mob_atk_dis=1..}] run function cartographer_mob_abilities:loop/tick/disablers/attack

execute if entity @s[scores={mob_move_red=1..}] run function cartographer_mob_abilities:loop/tick/reducers/move
execute if entity @s[scores={mob_atk_red=1..}] run function cartographer_mob_abilities:loop/tick/reducers/attack

execute if entity @s[scores={mob_sturdy=1..}] run function cartographer_mob_abilities:loop/tick/sturdy/effects

#Run Has Active Effects
execute if entity @s[tag=has_active] run function cartographer_mob_abilities:loop/tick/actives

#Augment Buff Particles
execute if entity @s[scores={augment_time=1..}] run particle minecraft:dust 1 0 0 0.7 ~ ~1 ~ 0.3 0.5 0.3 0 2 normal
execute if entity @s[scores={augment_time=1..}] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.05 1 normal