scoreboard players add @s ca.lifetime 1

execute unless entity @s[tag=ca.reviving] run effect give @s invisibility 1 0 true

scoreboard players operation $mul_mod_20 dt.var = @s ca.lifetime
scoreboard players operation $mul_mod_20 dt.var %= $20 ca.CONSTANT

execute if score $mul_mod_20 dt.var matches 1 run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force
execute if score $mul_mod_20 dt.var matches 1 run playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.35 2

particle minecraft:glow ~ ~ ~ 0.2 0.2 0.2 5 1 normal

execute unless entity @s[tag=ca.nearby_player] as @a[tag=!ca.has_revived_before,distance=..7.5,scores={dt.respawn=5..}] run function cartographer_charon:multiplayer/never_revived
execute if entity @a[tag=!ca.has_revived_before,distance=..7.5,scores={dt.respawn=5..}] run tag @s add ca.nearby_player
execute unless entity @a[tag=!ca.has_revived_before,distance=..7.5,scores={dt.respawn=5..}] run tag @s remove ca.nearby_player

execute unless data entity @s HandItems[0].id run function cartographer_charon:multiplayer/purge

execute unless entity @s[tag=ca.reviving] positioned ~ ~-1 ~ if entity @a[distance=1.15..4.5,predicate=cartographer_charon:reviving_shade] run playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 3 0.85
execute positioned ~ ~-1 ~ if entity @a[distance=1.15..4.5,predicate=cartographer_charon:reviving_shade] run tag @s add ca.reviving

execute if entity @s[tag=ca.reviving] run function cartographer_charon:multiplayer/reviving

execute unless entity @s[tag=ca.reviving] if score @s ca.lifetime matches 601.. positioned ~ ~-1 ~ run function cartographer_charon:multiplayer/despawn

execute if score @s ca.lifetime matches 400 run team join CharonShadeVisualLow @s
execute if score @s ca.lifetime matches 400 run playsound minecraft:entity.allay.hurt player @a[distance=..25] ~ ~ ~ 4 1.5
execute if score @s ca.lifetime matches 400 run particle minecraft:glow_squid_ink ~ ~0.5 ~ 0 0 0 0.15 15 normal
execute if score @s ca.lifetime matches 400 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.1 25 normal
execute if score @s ca.lifetime matches 400 run particle minecraft:sculk_soul ~ ~0.5 ~ 0 0 0 0.1 25 normal

execute if entity @s[tag=ca.reviving] unless entity @a[distance=1.15..4.5,predicate=cartographer_charon:reviving_shade] run playsound minecraft:entity.allay.item_taken player @a ~ ~ ~ 3 0.85
execute positioned ~ ~-1 ~ unless entity @a[distance=1.15..4.5,predicate=cartographer_charon:reviving_shade] run tag @s remove ca.reviving
