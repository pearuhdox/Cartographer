scoreboard players operation @s co_save = @s co_send

execute if score @s co_send matches 1.. run scoreboard players remove @s co_send 1
execute if score @s co_send matches ..-1 run scoreboard players add @s co_send 1
execute if score @s co_save matches 0 positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["co_motion_target"]}
execute if score @s co_save matches 1.. positioned ^ ^ ^-0.1 run function motion:motion/change/send
execute if score @s co_save matches ..-1 positioned ^ ^ ^0.1 run function motion:motion/change/send

