
#Reset flag
scoreboard players set $inject_cmd bbl.storage 0

#Check if rim is loaded
execute store result score $rim_loaded bbl.storage run data get storage loe:datapacks active_datapacks.rim
#If rim found, flag to inject CMD
execute if score $rim_loaded bbl.storage matches 1.. run scoreboard players set $inject_cmd bbl.storage 1

#Check if inasa is loaded
execute store result score $inasa_loaded bbl.storage run data get storage loe:datapacks active_datapacks.inasa
#If rim found, flag to inject CMD
execute if score $inasa_loaded bbl.storage matches 1.. run scoreboard players set $inject_cmd bbl.storage 1

#Inject if flag true
execute if score $inject_cmd bbl.storage matches 1.. run function bb:lib/lexica_cmd/inject
