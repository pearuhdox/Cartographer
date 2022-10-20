scoreboard players operation $loyalty_amt ca.loyalty = @s ca.loyalty
execute if score $loyalty_amt ca.loyalty matches 100.. run scoreboard players remove $loyalty_amt ca.loyalty 100

scoreboard players set $recall_time ca.loyalty 20

scoreboard players operation $loyalty_over_5 ca.loyalty = $loyalty_amt ca.loyalty
scoreboard players remove $loyalty_over_5 ca.loyalty 5

execute if score $loyalty_amt ca.loyalty matches 6.. run scoreboard players set $loyalty_amt ca.loyalty 5
scoreboard players operation $loyalty_amt ca.loyalty *= $2 ca.CONSTANT

scoreboard players operation $recall_time ca.loyalty -= $loyalty_amt ca.loyalty
execute if score $loyalty_over_5 ca.loyalty matches 1.. run scoreboard players operation $recall_time ca.loyalty -= $loyalty_over_5 ca.loyalty

execute if score $collapse ca.loyalty matches 1.. run scoreboard players operation $recall_time ca.loyalty *= $150 ca.CONSTANT
execute if score $collapse ca.loyalty matches 1.. run scoreboard players operation $recall_time ca.loyalty /= $100 ca.CONSTANT