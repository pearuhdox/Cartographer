scoreboard players operation @s ca.charon_statue_ct_old = @s ca.charon_statue_ct

execute store result score @s ca.charon_statue_ct run execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..6.5]

execute if score @s ca.charon_statue_ct > @s ca.charon_statue_ct_old run tag @s add no_near_player 
execute if score @s ca.charon_statue_ct > @s ca.charon_statue_ct_old positioned ^ ^ ^2 run function cartographer_charon:respawnable/raycast_start 