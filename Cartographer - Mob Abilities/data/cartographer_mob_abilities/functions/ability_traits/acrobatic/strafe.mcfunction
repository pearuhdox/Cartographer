playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:item.firecharge.use hostile @a[distance=..16] ~ ~ ~ 0.65 2
playsound minecraft:entity.horse.gallop hostile @a[distance=..16] ~ ~ ~ 0.75 1.35

particle minecraft:poof ~ ~0.25 ~ 0.3 0 0.3 0.1 15 normal

tp @s ~ ~ ~ facing entity @p eyes

scoreboard players set @s co_y 3

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 2

function bb:lib/rng
scoreboard players operation $acrobat_strafe ca.mob_var = $value bbl.rng

execute if score $acrobat_strafe ca.mob_var matches 1 run scoreboard players set @s co_yaw -8
execute if score $acrobat_strafe ca.mob_var matches 2 run scoreboard players set @s co_yaw 8

scoreboard players set @s co_send 3

function motion:motion/push

tag @s add ca.has_strafed

scoreboard players set @s ca.acrobatic_cooldown 3