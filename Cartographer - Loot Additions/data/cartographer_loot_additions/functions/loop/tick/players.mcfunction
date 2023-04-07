#execute if predicate cartographer_core:is_sneaking run function cartographer_loot_additions:cache/sneak_break_test
execute if entity @s[gamemode=!spectator,gamemode=!creative] run function cartographer_loot_additions:cache/sneak_break_test

execute if score @s ca.place_frame matches 1.. run function cartographer_loot_additions:place/master

execute if score @s ca.break_head matches 1.. run function cartographer_loot_additions:drops/handler
execute if score @s ca.break_whead matches 1.. run function cartographer_loot_additions:drops/handler

execute if score @s ca.la_respawn matches 3 run function cartographer_loot_additions:budding/pedestal/player_reset

scoreboard players set @s ca.break_head 0
scoreboard players set @s ca.break_whead 0
scoreboard players set @s ca.loot_sneak 0