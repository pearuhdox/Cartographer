scoreboard players set $swap ca.summon_id 0
scoreboard players operation $swap ca.summon_id = @s ca.summon_id


function cartographer_mob_abilities:ability_traits/legionary/replace

execute as @e[tag=ca.legioned,tag=!legion_checked,limit=1,sort=nearest,distance=..2] at @s run function cartographer_mob_abilities:ability_traits/legionary/data

playsound minecraft:entity.allay.hurt hostile @a[distance=..16] ~ ~ ~ 0.5 0.65
playsound minecraft:entity.turtle.egg_break hostile @a[distance=..16] ~ ~ ~ 1 0.5

kill @s