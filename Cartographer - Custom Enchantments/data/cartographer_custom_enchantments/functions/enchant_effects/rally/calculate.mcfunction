scoreboard players operation @s ca.rally_bank = @s ca.rally_amount
scoreboard players operation @s ca.rally_bank /= $2 ca.CONSTANT

scoreboard players operation $mod ca.rally_bank = @s ca.rally_bank
scoreboard players operation $mod ca.rally_bank %= $10 ca.CONSTANT

scoreboard players operation @s ca.rally_bank -= $mod ca.rally_bank

scoreboard players operation @s ca.rally_bank /= $10 ca.CONSTANT


tag @s remove ca.rallied