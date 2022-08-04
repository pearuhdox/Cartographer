data modify storage cartographer_charon:player DeathLoc set value []
data modify storage cartographer_charon:player DeathLoc set from entity @p LastDeathLocation.pos

execute store result score $death_x dt.var run data get storage cartographer_charon:player DeathLoc[0]
execute store result score $death_y dt.var run data get storage cartographer_charon:player DeathLoc[1]
execute store result score $death_z dt.var run data get storage cartographer_charon:player DeathLoc[2]

execute store result entity 31412301-0000-0007-0000-001b0000000b Pos[0] double 1 run scoreboard players add $death_x dt.var 0
execute store result entity 31412301-0000-0007-0000-001b0000000b Pos[1] double 1 run scoreboard players add $death_y dt.var 0
execute store result entity 31412301-0000-0007-0000-001b0000000b Pos[2] double 1 run scoreboard players add $death_z dt.var 0

execute as 31412301-0000-0007-0000-001b0000000b at @s run summon minecart ~ ~1 ~