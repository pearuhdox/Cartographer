scoreboard players add @s ca.skin_timer 1

execute if score @s[tag=ca.fireskin] ca.skin_timer matches 1 run function cartographer_mob_abilities:passive/skin/fireskin
execute if score @s[tag=ca.waterskin] ca.skin_timer matches 1 run function cartographer_mob_abilities:passive/skin/waterskin

execute if score @s[tag=ca.scaleskin] ca.skin_timer matches 1 run function cartographer_mob_abilities:passive/skin/scaleskin
execute if score @s[tag=ca.scaleskin_2] ca.skin_timer matches 1 run function cartographer_mob_abilities:passive/skin/scaleskin_2
execute if score @s[tag=ca.scaleskin_3] ca.skin_timer matches 1 run function cartographer_mob_abilities:passive/skin/scaleskin_3

execute if score @s[tag=ca.shimmerskin] ca.skin_timer matches 1 run function cartographer_mob_abilities:passive/skin/shimmerskin
execute if score @s[tag=ca.shroudskin] ca.skin_timer matches 1 run function cartographer_mob_abilities:passive/skin/shroudskin

execute if score @s ca.skin_timer matches 401.. run scoreboard players set @s ca.skin_timer 0