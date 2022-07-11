#Run 3 Second Passives (Breaker)
execute as @s[type=#bb:hostile,tag=ca.breaker] at @s run function cartographer_mob_abilities:passive/breaker

#execute if score $has_sight ca.var matches 0 run say score 0!

#Attempt to token mobs that can see a player.
execute as @s[type=#bb:hostile,tag=can_see_player,tag=!tokened,tag=priority_tokened] at @s if entity @a[distance=..30] run function cartographer_mob_abilities:helper/token/take
execute as @s[type=#bb:hostile,tag=can_see_player,tag=!tokened] at @s if entity @a[distance=..30] run function cartographer_mob_abilities:helper/token/take

#execute as @s[type=#bb:hostile,tag=can_see_player,tag=!tokened,tag=!priority_tokened] at @s if entity @a[distance=..30] run function cartographer_mob_abilities:helper/token/take
execute if score $global helper_diff matches 3.. as @s[type=#bb:hostile,tag=can_see_player,tag=!tokened,tag=!priority_tokened] at @s if entity @a[distance=..30] run function cartographer_mob_abilities:helper/token/take

#Purge our line of sight test here. This will re-queue mobs for Line of Sight checks.
tag @s remove los_checked
tag @s remove can_see_player

scoreboard players set $has_sight ca.var 0