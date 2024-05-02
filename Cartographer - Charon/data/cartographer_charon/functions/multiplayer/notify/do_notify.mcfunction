execute if score $value ca.revive_time matches 1 run playsound minecraft:entity.allay.item_thrown player @s ~ ~ ~ 2 1
execute if score $value ca.revive_time matches 4 run playsound minecraft:entity.allay.item_thrown player @s ~ ~ ~ 2 1.15
execute if score $value ca.revive_time matches 8 run playsound minecraft:entity.allay.item_thrown player @s ~ ~ ~ 2 1.3
execute if score $value ca.revive_time matches 12 run playsound minecraft:entity.allay.item_thrown player @s ~ ~ ~ 2 1.45
execute if score $value ca.revive_time matches 16 run playsound minecraft:entity.allay.item_thrown player @s ~ ~ ~ 2 1.6

execute if score $value ca.revive_time matches 1 run title @s actionbar [{"text":"[","color":"white","italic":false},{"text":"","color":"aqua"},{"text":"Reviving...","color":"gray"},{"text":"]","color":"white","italic":false}]
execute if score $value ca.revive_time matches 4 run title @s actionbar [{"text":"[","color":"white","italic":false},{"text":"Re","color":"aqua"},{"text":"viving...","color":"gray"},{"text":"]","color":"white","italic":false}]
execute if score $value ca.revive_time matches 8 run title @s actionbar [{"text":"[","color":"white","italic":false},{"text":"Revi","color":"aqua"},{"text":"ving...","color":"gray"},{"text":"]","color":"white","italic":false}]
execute if score $value ca.revive_time matches 12 run title @s actionbar [{"text":"[","color":"white","italic":false},{"text":"Revivi","color":"aqua"},{"text":"ng...","color":"gray"},{"text":"]","color":"white","italic":false}]
execute if score $value ca.revive_time matches 16 run title @s actionbar [{"text":"[","color":"white","italic":false},{"text":"Reviving","color":"aqua"},{"text":"...","color":"gray"},{"text":"]","color":"white","italic":false}]
