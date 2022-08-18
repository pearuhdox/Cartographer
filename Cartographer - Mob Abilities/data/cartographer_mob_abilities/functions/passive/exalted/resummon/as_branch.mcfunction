execute store result score $exalted_type exalted run data get entity @s HandItems[0].tag.EntityType
function cartographer_mob_abilities:passive/exalted/resummon

playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1.2 2
playsound minecraft:entity.wither.spawn player @a[distance=..16] ~ ~ ~ 0.1 2

kill @s