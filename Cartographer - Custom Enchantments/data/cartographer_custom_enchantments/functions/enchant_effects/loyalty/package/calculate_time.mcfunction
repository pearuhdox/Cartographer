scoreboard players operation $loyalty_amt ca.loyalty = @s ca.loyalty
execute if score $loyalty_amt ca.loyalty matches 100.. run scoreboard players remove $loyalty_amt ca.loyalty 100

scoreboard players set $recall_time ca.loyalty 38

scoreboard players operation $loyalty_over_3 ca.loyalty = $loyalty_amt ca.loyalty
scoreboard players remove $loyalty_over_3 ca.loyalty 3

scoreboard players operation $loyalty_over_6 ca.loyalty = $loyalty_amt ca.loyalty
scoreboard players remove $loyalty_over_6 ca.loyalty 6

execute if score $loyalty_amt ca.loyalty matches 4.. run scoreboard players set $loyalty_amt ca.loyalty 3
execute if score $loyalty_over_3 ca.loyalty matches 4.. run scoreboard players set $loyalty_over_3 ca.loyalty 3
scoreboard players operation $loyalty_amt ca.loyalty *= $5 ca.CONSTANT

scoreboard players operation $recall_time ca.loyalty -= $loyalty_amt ca.loyalty

scoreboard players operation $loyalty_over_3 ca.loyalty *= $3 ca.CONSTANT
execute if score $loyalty_over_3 ca.loyalty matches 1.. run scoreboard players operation $recall_time ca.loyalty -= $loyalty_over_3 ca.loyalty

scoreboard players operation $loyalty_over_6 ca.loyalty *= $2 ca.CONSTANT
execute if score $loyalty_over_6 ca.loyalty matches 1.. run scoreboard players operation $recall_time ca.loyalty -= $loyalty_over_6 ca.loyalty


execute if score $collapse ca.loyalty matches 1.. run scoreboard players operation $recall_time ca.loyalty *= $150 ca.CONSTANT
execute if score $collapse ca.loyalty matches 1.. run scoreboard players operation $recall_time ca.loyalty /= $100 ca.CONSTANT