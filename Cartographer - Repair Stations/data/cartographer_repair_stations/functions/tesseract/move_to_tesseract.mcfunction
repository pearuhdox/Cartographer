execute if data storage cartographer_repair_stations:tesseract Data.Equipped[0].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[0].tag.NoTesseract unless data entity @s SelectedItem.id run scoreboard players set $void_main ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[1].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[1].tag.NoTesseract unless data entity @s Inventory[{Slot:-106b}].id run scoreboard players set $void_off ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[2].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[2].tag.NoTesseract unless data entity @s Inventory[{Slot:100b}].id run scoreboard players set $void_head ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[3].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[3].tag.NoTesseract unless data entity @s Inventory[{Slot:101b}].id run scoreboard players set $void_body ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[4].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[4].tag.NoTesseract unless data entity @s Inventory[{Slot:102b}].id run scoreboard players set $void_legs ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[5].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[5].tag.NoTesseract unless data entity @s Inventory[{Slot:103b}].id run scoreboard players set $void_feet ca.tesseract 1

execute if score $void_main ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[0].tag.RepairCost
execute if score $void_main ca.tesseract matches 1.. if score $repair_cost ca.tesseract matches 60.. run scoreboard players set $void_main ca.tesseract 0

execute if score $void_off ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[1].tag.RepairCost
execute if score $void_off ca.tesseract matches 1.. if score $repair_cost ca.tesseract matches 60.. run scoreboard players set $void_off ca.tesseract 0

execute if score $void_head ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[2].tag.RepairCost
execute if score $void_head ca.tesseract matches 1.. if score $repair_cost ca.tesseract matches 60.. run scoreboard players set $void_head ca.tesseract 0

execute if score $void_body ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[3].tag.RepairCost
execute if score $void_body ca.tesseract matches 1.. if score $repair_cost ca.tesseract matches 60.. run scoreboard players set $void_body ca.tesseract 0

execute if score $void_legs ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[4].tag.RepairCost
execute if score $void_legs ca.tesseract matches 1.. if score $repair_cost ca.tesseract matches 60.. run scoreboard players set $void_legs ca.tesseract 0

execute if score $void_feet ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[5].tag.RepairCost
execute if score $void_feet ca.tesseract matches 1.. if score $repair_cost ca.tesseract matches 60.. run scoreboard players set $void_feet ca.tesseract 0

execute if score $void_main ca.tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_off ca.tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_head ca.tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_body ca.tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_legs ca.tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_feet ca.tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}

execute if score $void_main ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[0]
execute if score $void_off ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[1]
execute if score $void_head ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[2]
execute if score $void_body ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[3]
execute if score $void_legs ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[4]
execute if score $void_feet ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[5]

scoreboard players set $void_main ca.tesseract 0
scoreboard players set $void_off ca.tesseract 0
scoreboard players set $void_head ca.tesseract 0
scoreboard players set $void_body ca.tesseract 0
scoreboard players set $void_legs ca.tesseract 0
scoreboard players set $void_feet ca.tesseract 0

tag @s remove check_to_tesseract
