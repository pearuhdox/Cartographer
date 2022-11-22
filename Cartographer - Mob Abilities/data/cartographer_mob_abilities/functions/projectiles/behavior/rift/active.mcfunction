execute if score $rift_mod ca.mob_var matches 0 run function cartographer_mob_abilities:projectiles/behavior/rift/rupture

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..6] ~ ~ ~ 0.05 1.25

function cartographer_mob_abilities:projectiles/behavior/rift/move
function cartographer_mob_abilities:projectiles/behavior/rift/ground_fix

execute at @s run particle minecraft:block minecraft:dirt ^ ^0.2 ^-0.3 0.25 0.15 0.25 0.1 3 normal

execute at @s run particle minecraft:block minecraft:dirt ^ ^0.2 ^0.1 0.25 0.15 0.25 0.1 3 normal