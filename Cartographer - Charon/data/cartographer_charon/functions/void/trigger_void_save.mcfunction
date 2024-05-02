execute unless score $fixed_home charon.gmr matches 1.. run function cartographer_charon:inv/set_position/default

execute if score $fixed_home charon.gmr matches 1 positioned ~ -564 ~ if entity @s[distance=..500] positioned as @s run function cartographer_charon:inv/set_position/set_point
execute if score $fixed_home charon.gmr matches 1 positioned ~ -564 ~ unless entity @s[distance=..500] positioned as @s run function cartographer_charon:inv/set_position/default

execute if score $fixed_home charon.gmr matches 2 run function cartographer_charon:inv/set_position/set_point

execute unless score $no_death_note charon.gmr matches 1.. if score $lift charon.gmr matches 1 run advancement grant @s only cartographer_charon:death_note/void_lift
execute unless score $no_death_note charon.gmr matches 1.. if score $return charon.gmr matches 1 run advancement grant @s only cartographer_charon:death_note/void_return
execute unless score $no_death_note charon.gmr matches 1.. unless score $return charon.gmr matches 1 unless score $lift charon.gmr matches 1 run advancement grant @s only cartographer_charon:death_note/void_execute

playsound minecraft:block.sculk_shrieker.shriek hostile @a[distance=..16] ~ ~ ~ 0.7 1.5
playsound minecraft:entity.warden.listening_angry hostile @a[distance=..16] ~ ~ ~ 0.7 0.85
playsound minecraft:ambient.basalt_deltas.mood hostile @a[distance=..16] ~ ~ ~ 1.4 2

execute if score $lift charon.gmr matches 1 run function cartographer_charon:void/lift

execute if score $return charon.gmr matches 1 run function cartographer_charon:void/return

execute unless score $return charon.gmr matches 1 unless score $lift charon.gmr matches 1 run function cartographer_charon:void/execute