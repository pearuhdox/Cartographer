execute if data storage cartographer_repair_stations:tesseract Data.Equipped[0].id unless data entity @s SelectedItem.id run scoreboard players set $void_main tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[1].id unless data entity @s Inventory[{Slot:-106b}].id run scoreboard players set $void_off tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[2].id unless data entity @s Inventory[{Slot:100b}].id run scoreboard players set $void_head tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[3].id unless data entity @s Inventory[{Slot:101b}].id run scoreboard players set $void_body tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[4].id unless data entity @s Inventory[{Slot:102b}].id run scoreboard players set $void_legs tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[5].id unless data entity @s Inventory[{Slot:103b}].id run scoreboard players set $void_feet tesseract 1

execute if score $void_main tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_off tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_head tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_body tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_legs tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_feet tesseract matches 1.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}

execute if score $void_main tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[0]
execute if score $void_off tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[1]
execute if score $void_head tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[2]
execute if score $void_body tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[3]
execute if score $void_legs tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[4]
execute if score $void_feet tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[5]

scoreboard players set $void_main tesseract 0
scoreboard players set $void_off tesseract 0
scoreboard players set $void_head tesseract 0
scoreboard players set $void_body tesseract 0
scoreboard players set $void_legs tesseract 0
scoreboard players set $void_feet tesseract 0

tag @s remove check_to_tesseract
