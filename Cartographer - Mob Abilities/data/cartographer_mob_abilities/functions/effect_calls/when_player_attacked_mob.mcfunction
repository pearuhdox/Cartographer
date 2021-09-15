#Touch Passive
scoreboard players set $aftershock ca.touch_check 0
scoreboard players set $blazing ca.touch_check 0
scoreboard players set $celestial ca.touch_check 0
scoreboard players set $evocative ca.touch_check 0
scoreboard players set $glacial ca.touch_check 0
scoreboard players set $overloading ca.touch_check 0
scoreboard players set $predator ca.touch_check 0
scoreboard players set $venemous ca.touch_check 0
scoreboard players set $voatile ca.touch_check 0
scoreboard players set $zephyrous ca.touch_check 0

execute if entity @s[tag=ca.touch] if entity @s[tag=ca.aftershock] run scoreboard players set $aftershock ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.blazing] run scoreboard players set $blazing ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.celestial] run scoreboard players set $celestial ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.evocative] run scoreboard players set $evocative ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.glacial] run scoreboard players set $glacial ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.overloading] run scoreboard players set $overloading ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.predator] run scoreboard players set $predator ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.venemous] run scoreboard players set $venemous ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.volatile] run scoreboard players set $voatile ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.zephyrous] run scoreboard players set $zephyrous ca.touch_check 1

execute if entity @s[tag=ca.hookshot,scores={ca.hooked=1..}] run tag @s add hook_broken

execute if entity @s[tag=ca.ambidextrous,tag=ca.follow_up,scores={ca.ambi_cool=0}] run function cartographer_mob_abilities:passive/ambidextrous/swap