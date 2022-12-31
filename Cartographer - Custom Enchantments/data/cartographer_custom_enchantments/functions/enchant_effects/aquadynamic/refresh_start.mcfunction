scoreboard players set $mult ca.aquadynamic 0

scoreboard players operation $mult ca.aquadynamic = @s ca.respiration
execute if predicate cartographer_custom_enchantments:wearing_turtle run scoreboard players add $mult ca.aquadynamic 1

execute unless score $mult ca.aquadynamic matches 1.. run effect give @s dolphins_grace 15 0
execute unless score $mult ca.aquadynamic matches 1.. run effect give @s conduit_power 15 0

execute if score $mult ca.aquadynamic matches 1 run effect give @s dolphins_grace 30 0 true
execute if score $mult ca.aquadynamic matches 1 run effect give @s conduit_power 30 0 true

execute if score $mult ca.aquadynamic matches 2 run effect give @s dolphins_grace 45 0 true
execute if score $mult ca.aquadynamic matches 2 run effect give @s conduit_power 45 0 true

execute if score $mult ca.aquadynamic matches 3 run effect give @s dolphins_grace 60 0 true
execute if score $mult ca.aquadynamic matches 3 run effect give @s conduit_power 60 0 true

execute if score $mult ca.aquadynamic matches 4 run effect give @s dolphins_grace 75 0 true
execute if score $mult ca.aquadynamic matches 4 run effect give @s conduit_power 75 0 true

execute if score $mult ca.aquadynamic matches 5 run effect give @s dolphins_grace 90 0 true
execute if score $mult ca.aquadynamic matches 5 run effect give @s conduit_power 90 0 true

execute if score $mult ca.aquadynamic matches 6 run effect give @s dolphins_grace 105 0 true
execute if score $mult ca.aquadynamic matches 6 run effect give @s conduit_power 105 0 true

execute if score $mult ca.aquadynamic matches 7 run effect give @s dolphins_grace 120 0 true
execute if score $mult ca.aquadynamic matches 7 run effect give @s conduit_power 120 0 true

execute if score $mult ca.aquadynamic matches 8 run effect give @s dolphins_grace 135 0 true
execute if score $mult ca.aquadynamic matches 8 run effect give @s conduit_power 135 0 true

execute if score $mult ca.aquadynamic matches 9 run effect give @s dolphins_grace 150 0 true
execute if score $mult ca.aquadynamic matches 9 run effect give @s conduit_power 150 0 true

execute if score $mult ca.aquadynamic matches 10 run effect give @s dolphins_grace 165 0 true
execute if score $mult ca.aquadynamic matches 10 run effect give @s conduit_power 165 0 true

execute if score $mult ca.aquadynamic matches 11.. run effect give @s dolphins_grace 180 0 true
execute if score $mult ca.aquadynamic matches 11.. run effect give @s conduit_power 180 0 true


playsound minecraft:entity.player.breath player @s ~ ~ ~ 0.5 0.5
particle minecraft:cloud ~ ~1 ~ 0.35 0.35 0.35 0.1 4 normal
particle minecraft:bubble ~ ~1 ~ 0.35 0.35 0.35 0.5 20 normal

function #minecraft:cartographer/events/aquadynamic/enter