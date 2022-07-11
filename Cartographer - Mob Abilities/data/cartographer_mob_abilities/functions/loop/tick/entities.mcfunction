#Run Hostile Mob Effects
execute as @s[type=#bb:hostile] at @s run function cartographer_mob_abilities:loop/tick/hostiles

#Run Horrify Tether on Tethers
execute as @s[type=marker,tag=horrify_tether] at @s run function cartographer_mob_abilities:ability_traits/horrifying/tether_tick

#Run Custom Particles for Custom Shulker Projectiles
execute as @s[type=shulker_bullet,scores={ca.cs_id=1..}] at @s run function cartographer_mob_abilities:passive/projectile/custom_shulker_visuals

#Run Auras
execute if entity @s[tag=ca.vfx_aura] run function cartographer_mob_abilities:aura/run_vfx

execute unless entity @s[tag=death_checked] run function cartographer_mob_abilities:passive/death_fix_branch