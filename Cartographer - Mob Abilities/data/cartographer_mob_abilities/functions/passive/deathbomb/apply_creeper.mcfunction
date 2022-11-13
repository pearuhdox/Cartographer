execute store result score @s ca.deathbomb_fuse_max run data get entity @s Fuse
scoreboard players remove @s ca.deathbomb_fuse_max 1

data modify entity @s Silent set value 1b

tag @s add ca.deathbomb_creeper_setup