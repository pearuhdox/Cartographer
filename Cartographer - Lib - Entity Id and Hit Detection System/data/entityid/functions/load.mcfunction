#listen scores
scoreboard objectives add ehp_listen dummy
scoreboard objectives add phe_listen dummy
scoreboard objectives add ekp_listen dummy
scoreboard objectives add pke_listen dummy

#entity id value scores
scoreboard objectives add entityid dummy
scoreboard objectives add entityid.0 dummy
scoreboard objectives add entityid.1 dummy
scoreboard objectives add entityid.2 dummy
scoreboard objectives add entityid.3 dummy
scoreboard objectives add entityid.4 dummy
scoreboard objectives add entityid.5 dummy
scoreboard objectives add entityid.6 dummy
scoreboard objectives add entityid.7 dummy
scoreboard objectives add entityid.8 dummy
scoreboard objectives add entityid.9 dummy
scoreboard objectives add entityid.10 dummy
scoreboard objectives add entityid.11 dummy
scoreboard objectives add entityid.12 dummy
scoreboard objectives add entityid.13 dummy
scoreboard objectives add entityid.14 dummy
scoreboard objectives add entityid.15 dummy

#numbers used
scoreboard objectives add num dummy
scoreboard players set 2 num 2

#marking as loaded
scoreboard players set #loaded entityid 1

#creating player array if needed
execute unless data storage entityid:players all[0] run data modify storage entityid:players all set value [0]