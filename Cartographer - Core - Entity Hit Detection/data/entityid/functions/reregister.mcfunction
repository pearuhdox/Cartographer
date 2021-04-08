#this is run on players for registration for redundancy
#removing tags
tag @s remove entityid.registered
tag @s remove entityid.0.0
tag @s remove entityid.0.1
tag @s remove entityid.1.0
tag @s remove entityid.1.1
tag @s remove entityid.2.0
tag @s remove entityid.2.1
tag @s remove entityid.3.0
tag @s remove entityid.3.1
tag @s remove entityid.4.0
tag @s remove entityid.4.1
tag @s remove entityid.5.0
tag @s remove entityid.5.1
tag @s remove entityid.6.0
tag @s remove entityid.6.1
tag @s remove entityid.7.0
tag @s remove entityid.7.1
tag @s remove entityid.8.0
tag @s remove entityid.8.1
tag @s remove entityid.9.0
tag @s remove entityid.9.1 
tag @s remove entityid.10.0
tag @s remove entityid.10.1 
tag @s remove entityid.11.0
tag @s remove entityid.11.1 
tag @s remove entityid.12.0
tag @s remove entityid.12.1 
tag @s remove entityid.13.0
tag @s remove entityid.13.1 
tag @s remove entityid.14.0
tag @s remove entityid.14.1 
tag @s remove entityid.15.0
tag @s remove entityid.15.1

#resetting score
scoreboard players reset @s entityid
scoreboard players reset @s entityid.0
scoreboard players reset @s entityid.1
scoreboard players reset @s entityid.2
scoreboard players reset @s entityid.3
scoreboard players reset @s entityid.4
scoreboard players reset @s entityid.5
scoreboard players reset @s entityid.6
scoreboard players reset @s entityid.7
scoreboard players reset @s entityid.8
scoreboard players reset @s entityid.9
scoreboard players reset @s entityid.10
scoreboard players reset @s entityid.11
scoreboard players reset @s entityid.12
scoreboard players reset @s entityid.13
scoreboard players reset @s entityid.14
scoreboard players reset @s entityid.15
 
#re-assigning id
execute if score #loaded entityid matches 1 run function entityid:assign_id