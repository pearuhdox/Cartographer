#Run Custom Statuses Effects
execute if entity @s[type=#bb:hostile] run function cartographer_custom_statuses:loop/tick/entities

#Run Decay Spread
execute if entity @s[type=item] if data entity @s {Item:{tag:{Decaying:1}}} run function cartographer_custom_statuses:effects/infection_spread