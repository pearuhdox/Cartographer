execute unless entity @s[tag=ca.no_combat] if score @s ca.combat_timer matches ..5 run scoreboard players set @s ca.combat_timer 5

tag @s remove ca.no_combat

advancement revoke @s only cartographer_core:player_enters_combat_hurt