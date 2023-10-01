scoreboard players set $has_pickup ca.mob_var 0

execute on passengers run scoreboard players set $has_pickup ca.mob_var 1


execute if score $has_pickup ca.mob_var matches 0 run ride @e[type=#bb:hostile,distance=0.5..4,tag=ca.pickup_able,limit=1,sort=nearest] mount @s

execute if score $has_pickup ca.mob_var matches 0 on passengers anchored eyes run particle minecraft:poof ~ ~0.2 ~ 0.2 0 0.2 0.1 10 normal
execute if score $has_pickup ca.mob_var matches 0 on passengers run playsound minecraft:entity.horse.saddle player @a ~ ~ ~ 1 0.75