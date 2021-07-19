#getting new id
scoreboard players add ca.ca.current= entityid 1

#counting players and checking for collisions
execute store result storage entityid:players ca.current int 1 run scoreboard players get ca.ca.current= entityid
execute store result score players= entityid run data get storage entityid:players all
data modify storage entityid:players temp set from storage entityid:players all
execute store result score iditer= entityid run data modify storage entityid:players temp[] set from storage entityid:players ca.current

#looping if dupe found
execute unless score iditer= entityid = players= entityid run function entityid:assign_id/find_id