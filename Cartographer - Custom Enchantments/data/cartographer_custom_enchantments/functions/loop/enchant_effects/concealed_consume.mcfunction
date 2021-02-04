scoreboard players set @s ca.conceal_time 0
attribute @s minecraft:generic.attack_damage modifier remove 31-1920-51-1220-8
execute if entity @s[scores={helper_deal_dmg=1..}] run playsound minecraft:entity.player.attack.sweep player @a[distance=..12] ~ ~ ~ 4 1.5
execute if entity @s[scores={helper_deal_dmg=1..}] run playsound minecraft:block.anvil.land player @a[distance=..12] ~ ~ ~ 1 2
playsound minecraft:entity.illusioner.mirror_move player @a[distance=..12] ~ ~ ~ 2 0.75

execute as @e[type=#cartographer_core:hostile,distance=..6,nbt=!{HurtTime:0s},limit=1,sort=nearest] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.05 15 normal