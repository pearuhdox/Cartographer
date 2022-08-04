tp @s ~ ~-0.7 ~ facing entity @p feet

scoreboard players add @s ca.lifetime 1

particle lava ~ ~0.2 ~ 0 0 0 0 1 normal
particle lava ~ ~1 ~ 0 0 0 0 1 normal

execute if score @s ca.lifetime matches 40.. run setblock ~1 ~ ~ fire keep
execute if score @s ca.lifetime matches 40.. run setblock ~-1 ~ ~ fire keep
execute if score @s ca.lifetime matches 40.. run setblock ~ ~ ~1 fire keep
execute if score @s ca.lifetime matches 40.. run setblock ~ ~ ~-1 fire keep

execute if score @s ca.lifetime matches 30 unless block ~1 ~-1 ~ #cartographer_mob_abilities:unbreakable run setblock ~1 ~-1 ~ magma_block replace
execute if score @s ca.lifetime matches 30 unless block ~-1 ~-1 ~ #cartographer_mob_abilities:unbreakable run setblock ~-1 ~-1 ~ magma_block replace
execute if score @s ca.lifetime matches 30 unless block ~ ~-1 ~1 #cartographer_mob_abilities:unbreakable run setblock ~ ~-1 ~1 magma_block replace
execute if score @s ca.lifetime matches 30 unless block ~ ~-1 ~-1 #cartographer_mob_abilities:unbreakable run setblock ~ ~-1 ~-1 magma_block replace
execute if score @s ca.lifetime matches 20 unless block ~ ~-1 ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~-1 ~ magma_block replace

execute unless block ~ ~ ~ #bb:can_raycast run playsound minecraft:block.fire.extinguish hostile @a[distance=..12] ~ ~ ~ 1 0.5
execute unless block ~ ~ ~ #bb:can_raycast run playsound minecraft:entity.shulker.death hostile @a[distance=..12] ~ ~ ~ 1 1.5
execute unless block ~ ~ ~ #bb:can_raycast run particle large_smoke ~ ~0.5 ~ 0.6 0.2 0.6 0.1 40 normal
execute unless block ~ ~ ~ #bb:can_raycast run kill @s

execute if score @s ca.lifetime matches 42 run setblock ~ ~ ~ lava[level=7] replace
execute if score @s ca.lifetime matches 44 run setblock ~ ~ ~ lava[level=6] replace
execute if score @s ca.lifetime matches 46 run setblock ~ ~ ~ lava[level=5] replace
execute if score @s ca.lifetime matches 48 run setblock ~ ~ ~ lava[level=4] replace
execute if score @s ca.lifetime matches 50 run setblock ~ ~ ~ lava[level=3] replace
execute if score @s ca.lifetime matches 52 run setblock ~ ~ ~ lava[level=2] replace
execute if score @s ca.lifetime matches 54 run setblock ~ ~ ~ lava[level=1] replace
execute if score @s ca.lifetime matches 56 run setblock ~ ~ ~ lava[level=0] replace

execute if score @s ca.lifetime matches 56 run playsound minecraft:item.bucket.empty_lava hostile @a[distance=..12] ~ ~ ~ 1 0.5
execute if score @s ca.lifetime matches 56 run playsound minecraft:entity.shulker.ambient hostile @a[distance=..12] ~ ~ ~ 1 1.5
execute if score @s ca.lifetime matches 56 run playsound minecraft:entity.shulker.shoot hostile @a[distance=..12] ~ ~ ~ 1 1.5
execute if score @s ca.lifetime matches 56 run kill @s