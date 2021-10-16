#Randomize Accuracy of Rotation by adding/subtracting from g_rot
scoreboard players set in math 1
scoreboard players set in1 math 3

function cartographer_core:helper/math/rng/range

scoreboard players operation $random ca.legion_id = out math

execute if score $random ca.legion_id matches 1..2 if score $undead ca.legion_id matches 1 run summon zombie ~ ~ ~
execute if score $random ca.legion_id matches 3 if score $undead ca.legion_id matches 1 run summon skeleton ~ ~ ~

execute if score $random ca.legion_id matches 1..2 if score $arthro ca.legion_id matches 1 run summon spider ~ ~ ~
execute if score $random ca.legion_id matches 3 if score $arthro ca.legion_id matches 1 run summon cave_spider ~ ~ ~

execute if score $random ca.legion_id matches 1..2 if score $human ca.legion_id matches 1 run summon pillager ~ ~ ~
execute if score $random ca.legion_id matches 3 if score $human ca.legion_id matches 1 run summon vindicator ~ ~ ~

execute if score $random ca.legion_id matches 1..2 if score $monster ca.legion_id matches 1 if score $fiery ca.legion_id matches 1 run summon magma_cube ~ ~ ~ {Size:2}
execute if score $random ca.legion_id matches 3 if score $monster ca.legion_id matches 1 if score $fiery ca.legion_id matches 1 run summon blaze ~ ~ ~

execute if score $random ca.legion_id matches 1..2 if score $monster ca.legion_id matches 1 unless score $fiery ca.legion_id matches 1 run summon slime ~ ~ ~ {Size:2}
execute if score $random ca.legion_id matches 3 if score $monster ca.legion_id matches 1 unless score $fiery ca.legion_id matches 1 run summon creeper ~ ~ ~

particle minecraft:soul ~ ~1 ~ 0.25 0.5 0.25 0.04 20 normal

playsound minecraft:particle.soul_escape hostile @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 1 0.8