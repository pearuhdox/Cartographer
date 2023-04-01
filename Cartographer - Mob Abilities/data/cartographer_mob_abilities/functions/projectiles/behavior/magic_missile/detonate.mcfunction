particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 normal
particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 30 normal

playsound minecraft:entity.allay.hurt hostile @a[distance=..16] ~ ~ ~ 0.8 1
playsound minecraft:entity.firework_rocket.launch hostile @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.twinkle hostile @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.allay.death hostile @a[distance=..16] ~ ~ ~ 0.8 1

scoreboard players operation $missile_dmg ca.ability_dmg = @s ca.ability_dmg

execute unless entity @s[tag=ca.checked] positioned ~ ~1 ~ if block ~ ~ ~ #bb:can_raycast as @a[distance=..2] at @s run function cartographer_mob_abilities:projectiles/behavior/magic_missile/detonate_player
execute unless entity @s[tag=ca.checked] as @s positioned as @a[scores={ca.damage_queue=1..},distance=..2] run function cartographer_mob_abilities:helper/damage/ability_magic

execute unless entity @s[tag=ca.checked] unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits

tag @s add ca.checked

tag @a[distance=..2] remove ability_tagged

kill @e[type=sheep,distance=..0.5,tag=magic_missile_hitbox]
kill @s