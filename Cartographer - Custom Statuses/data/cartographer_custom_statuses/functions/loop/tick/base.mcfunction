execute as @e[type=#cartographer_core:hostile] at @s run function cartographer_custom_statuses:loop/tick/entities

#Run Decay Spread
execute as @e[type=item,nbt={Item:{tag:{Decaying:1}}}] at @s run function cartographer_custom_statuses:effects/infection_spread