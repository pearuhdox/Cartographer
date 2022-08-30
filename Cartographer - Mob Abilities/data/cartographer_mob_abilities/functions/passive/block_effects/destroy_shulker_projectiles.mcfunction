execute as @e[type=shulker_bullet,distance=..24] at @s run function cartographer_mob_abilities:passive/block_effects/kill_bullets

advancement revoke @s only cartographer_mob_abilities:block_effects/shulker_death
advancement revoke @s only cartographer_mob_abilities:block_effects/custom_shulker_bullet_death