playsound minecraft:delta.entity.generic.explode block @a ~ ~ ~ 0.6 0.7
playsound minecraft:entity.generic.big_fall player @a ~ ~ ~ 2 0.5

execute rotated 0 0 positioned ^ ^0.35 ^3 run function delta:api/explosion_particle
execute rotated 45 0 positioned ^ ^0.35 ^3 run function delta:api/explosion_particle
execute rotated 90 0 positioned ^ ^0.35 ^3 run function delta:api/explosion_particle
execute rotated 135 0 positioned ^ ^0.35 ^3 run function delta:api/explosion_particle

execute rotated 180 0 positioned ^ ^0.35 ^3 run function delta:api/explosion_particle
execute rotated 225 0 positioned ^ ^0.35 ^3 run function delta:api/explosion_particle
execute rotated 270 0 positioned ^ ^0.35 ^3 run function delta:api/explosion_particle
execute rotated 315 0 positioned ^ ^0.35 ^3 run function delta:api/explosion_particle

effect clear @s jump_boost
execute if data storage cartographer_custom_enchantments:gravity data.Effect.Amplifier run function cartographer_custom_enchantments:enchant_effects/gravity/reapply_jump_boost

function #minecraft:cartographer/events/enchantments/passive/gravity
