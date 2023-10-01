scoreboard players set $has_mount ca.mob_var 0

execute on vehicle run scoreboard players set $has_mount ca.mob_var 1

execute if score $has_mount ca.mob_var matches 0 run ride @s mount @e[type=#bb:hostile,distance=0.5..4,tag=ca.mount_able,limit=1,sort=nearest]

execute if score $has_mount ca.mob_var matches 0 on vehicle anchored eyes run particle minecraft:poof ~ ~0.2 ~ 0.2 0 0.2 0.1 10 normal
execute if score $has_mount ca.mob_var matches 0 on vehicle run playsound minecraft:entity.horse.saddle player @a ~ ~ ~ 1 0.75