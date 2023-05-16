damage @s 2 cartographer_custom_enchantments:curse_damage

stopsound @a[distance=..16] * minecraft:entity.player.hurt
playsound minecraft:entity.player.hurt_drown player @a[distance=..16] ~ ~ ~
playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ 0.2 2
particle witch ~ ~0.2 ~ 0.1 0 0.1 0.1 8 normal

scoreboard players set @s ca.curse_drown_time 0