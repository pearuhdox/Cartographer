execute positioned ~ ~1 ~ run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

execute unless score $check_sheep_missile ca.mob_var matches 1.. run particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 30 normal
execute if score $check_sheep_missile ca.mob_var matches 1.. run particle minecraft:witch ~ ~1 ~ 0.15 0.15 0.15 0.2 15 normal

execute unless score $check_sheep_missile ca.mob_var matches 1.. run playsound minecraft:entity.allay.death hostile @a[distance=..16] ~ ~ ~ 0.8 1
execute unless score $check_sheep_missile ca.mob_var matches 1.. run playsound minecraft:entity.firework_rocket.launch hostile @a[distance=..16] ~ ~ ~ 1 1

execute if score $check_sheep_missile ca.mob_var matches 1.. run playsound minecraft:entity.shulker_bullet.hurt player @a[distance=..16] ~ ~ ~ 1 1


playsound minecraft:entity.allay.hurt hostile @a[distance=..16] ~ ~ ~ 0.8 1
playsound minecraft:entity.firework_rocket.twinkle hostile @a[distance=..16] ~ ~ ~ 1 1

scoreboard players operation $missile_dmg ca.ability_dmg = @s ca.ability_dmg

#The projectile does no damage if it was destroyed
execute if score $check_sheep_missile ca.mob_var matches 1.. run tag @s add ca.checked

execute unless entity @s[tag=ca.checked] positioned ~ ~1 ~ if block ~ ~ ~ #bb:can_raycast as @a[distance=..2] at @s run function cartographer_mob_abilities:projectiles/behavior/magic_missile/detonate_player

execute unless entity @s[tag=ca.checked] if entity @a[distance=..2] run function cartographer_mob_abilities:helper/damage/macro_setup
execute unless entity @s[tag=ca.checked] as @s positioned as @a[distance=..2] run function cartographer_mob_abilities:helper/damage/ability_magic_untethered with storage cartographer:macro.mob_abilities

execute unless entity @s[tag=ca.checked] unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits

tag @s add ca.checked

tag @a remove ability_tagged

execute on passengers run kill @s[type=sheep,distance=..0.5,tag=magic_missile_hitbox]
kill @s