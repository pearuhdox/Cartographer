execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1
execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1
execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1
execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1
execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1

title @a[distance=..8] actionbar {"text":"Your spawnpoint has been moved!","color":"dark_aqua","italic":false}

scoreboard players set @a[distance=..8] ca.charon_statue_cdl 0


particle minecraft:glow ~ ~0.8 ~ 0.25 0.3 0.25 5 30 normal

effect give @s glowing 2 0

tag @s remove no_near_player