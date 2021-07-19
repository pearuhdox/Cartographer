execute if entity @s[scores={ca.aquadynamic=1,ca.swim=0}] if block ~ ~ ~ water run effect give @s conduit_power 8 0 true
execute if entity @s[scores={ca.aquadynamic=1,ca.swim=1..}] if block ~ ~ ~ water run effect give @s dolphins_grace 8 0 true

execute if entity @s[scores={ca.aquadynamic=1}] unless block ~ ~ ~ water run effect give @s dolphins_grace 8 0 true