scoreboard players remove @s ca.raycast 1


#execute if block ~ ~ ~ minecraft:player_head run scoreboard players add @s ca.break_head_look_time 2

#scoreboard players operation $mod_4 ca.break_head_look_time = @s ca.break_head_look_time
#scoreboard players operation $mod_4 ca.break_head_look_time %= $4 ca.CONSTANT

#execute if score @s ca.break_head_look_time matches 1.. if score $mod_4 ca.break_head_look_time matches 1 run playsound minecraft:block.stone.hit block @a[distance=..8] ~ ~ ~ 0.255 0.5
#execute if score @s ca.break_head_look_time matches 1.. if block ~ ~ ~ minecraft:player_head align xyz positioned ~0.5 ~0.255 ~0.5 run particle minecraft:happy_villager ~ ~ ~ 0.255 0.255 0.255 1 1 normal
#execute if block ~ ~ ~ minecraft:player_head if score @s ca.break_head_look_time matches 9.. run function cartographer_loot_additions:cache/sneak_break_test/do_break

execute if block ~ ~ ~ minecraft:player_head run function cartographer_loot_additions:cache/sneak_break_test/confirm_head

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.25 run function cartographer_loot_additions:cache/sneak_break_test/raycast

tp 31182015-1215-1520-8514-2185111 4206900 -1 4206900