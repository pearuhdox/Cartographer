
#Check carto loaded
execute store result score $carto_loaded bbl.storage run data get storage loe:datapacks active_datapacks.cartographer.core
#If so, schedule checking for any red datapacks that use KB
execute if score $carto_loaded bbl.storage matches 1.. run schedule function bb:lib/lexica_cmd/check 2t
