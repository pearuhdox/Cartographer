#listen scores
scoreboard objectives add ehp_listen dummy
scoreboard objectives add phe_listen dummy
scoreboard objectives add ekp_listen dummy
scoreboard objectives add pke_listen dummy

#entity id value scores
scoreboard objectives add entityid dummy

#numbers used
scoreboard objectives add num dummy
scoreboard players set 2 num 2

#marking as loaded
scoreboard players set #loaded entityid 1

#creating player array if needed
execute unless data storage entityid:players all[0] run data modify storage entityid:players all set value [0]