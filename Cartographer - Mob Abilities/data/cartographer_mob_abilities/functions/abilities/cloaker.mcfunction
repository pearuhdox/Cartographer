scoreboard players set @s cooldown 15

scoreboard players set @s ability_charge 0

scoreboard players set @e[distance=0.5..15,type=#cartographer_core:hostile] effect_cloaked 12

particle minecraft:large_smoke ~ ~1 ~ 0.75 0.1 0.75 0.2 40

playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..16] ~ ~ ~ 2 0.8

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened