#This function is ran in the base function. It restores tokens to a player.


#If cooldown is 0, give the player a token back. Players store tokens depending on the difficulty (1 for Easy / 2 for Normal / 3 for Hard / 4 For Expert / 5 for Nightmare)
#If an enemy is holding a token within 20 blocks (tag=tokened) then players cannot regenerate tokens.

#Easy
execute unless entity @e[type=#cartographer_core:hostile,distance=..20,tag=tokened] run scoreboard players set @s[scores={cooldown=0,helper_tokens=..0,helper_diff=1}] helper_tokens 1
#Normal
execute unless entity @e[type=#cartographer_core:hostile,distance=..20,tag=tokened] run scoreboard players set @s[scores={cooldown=0,helper_tokens=..1,helper_diff=2}] helper_tokens 2
#Hard
execute unless entity @e[type=#cartographer_core:hostile,distance=..20,tag=tokened] run scoreboard players set @s[scores={cooldown=0,helper_tokens=..2,helper_diff=3}] helper_tokens 3
#Expert
execute unless entity @e[type=#cartographer_core:hostile,distance=..20,tag=tokened] run scoreboard players set @s[scores={cooldown=0,helper_tokens=..3,helper_diff=4}] helper_tokens 4
#Nightmare
execute unless entity @e[type=#cartographer_core:hostile,distance=..20,tag=tokened] run scoreboard players set @s[scores={cooldown=0,helper_tokens=..4,helper_diff=5}] helper_tokens 5