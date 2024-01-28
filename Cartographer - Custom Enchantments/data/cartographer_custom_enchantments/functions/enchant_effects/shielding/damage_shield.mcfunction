execute unless score @s ca.shielding_cdl matches 1.. run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.25 2
execute unless score @s ca.shielding_cdl matches 1.. run particle minecraft:glow ~ ~0.2 ~ 0 0 0 0.1 1 normal

scoreboard players set @s ca.shielding_cdl 80

tag @s remove ca.shielding_full
tag @s remove ca.shielding_first