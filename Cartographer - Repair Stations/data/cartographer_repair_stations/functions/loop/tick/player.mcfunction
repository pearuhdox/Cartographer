execute if entity @s[tag=ca.run_crys_shield] run function cartographer_repair_stations:crystal_shield/find

execute if score @s[gamemode=!creative,gamemode=!spectator] ca.repair_anvil_place matches 1.. run function cartographer_repair_stations:repair_anvil/func/place_anvil/main
execute if score @s[gamemode=!creative,gamemode=!spectator] ca.repair_anvil_use matches 1.. run function cartographer_repair_stations:repair_anvil/func/use_anvil/main

execute if score @s ca.place_repair matches 1.. run function cartographer_repair_stations:place/master

execute unless score $no_tesseract ca.gamerule matches 1.. if entity @s[tag=check_to_tesseract] run function cartographer_repair_stations:tesseract/move_to_tesseract
execute if score $no_tesseract ca.gamerule matches 1.. run scoreboard players set @s tesseract 0