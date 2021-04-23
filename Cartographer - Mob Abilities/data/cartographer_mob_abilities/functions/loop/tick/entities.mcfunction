#Magic Missile Projectile
execute as @s[type=armor_stand,tag=magic_missile_projectile] at @s run function cartographer_mob_abilities:abilities/magic_missile_projectile

#Fireball Projectile
execute as @s[type=armor_stand,tag=fireball_projectile] at @s run function cartographer_mob_abilities:abilities/fireball_projectile

#Trap Projectile
execute as @s[type=armor_stand,tag=trap_projectile] at @s run function cartographer_mob_abilities:abilities/trapper_projectile

#Hook Projectile
execute as @s[type=armor_stand,tag=hook_projectile] at @s run function cartographer_mob_abilities:abilities/hook_projectile
scoreboard players add @s[type=armor_stand,tag=hook_projectile] helper_lifetime 1

#Particle for Wither Storm Skulls
execute as @s[type=wither_skull,tag=wither_storm_skull] at @s run particle minecraft:large_smoke ~ ~ ~ 0.3 0.2 0.3 0.1 1 normal

#Run On-Death Effects
execute as @s[type=item,nbt={Item:{tag:{DeathEffect:1}}}] at @s run function cartographer_mob_abilities:loop/tick/run_death_effects

#Run Invulnerable Notices
execute as @s[type=#cartographer_core:hostile,nbt={HurtTime:9s,ActiveEffects:[{Id:11b,Amplifier:4b}]}] at @s run function cartographer_mob_abilities:passive/invulnerable

#Laser
execute if entity @s[tag=laser,scores={cooldown=0},tag=tokened] if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/laser

#Laser Animation Cancel
execute if entity @s[tag=laser,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:token/cancel_ability

#Ender-Port Test
execute if entity @s[tag=enderport] if entity @e[type=#cartographer_core:projectile,distance=..5,nbt=!{inGround:1b}] run function cartographer_mob_abilities:passive/enderport

#Fix Tags
execute if entity @s[tag=has_active,tag=!ability_checked,tag=!duplicate] run function cartographer_mob_abilities:passive/ability_fix

execute if entity @s[type=#cartographer_core:hostile,tag=has_active,tag=!los_checked,scores={cooldown=0}] run scoreboard players set $do_los flag 1