tellraw @a {"text":"Cartographer: Beta 1.0 is installed!","color":"green","bold":false,"italic":false}
tellraw @a {"text":"Installed Modules:","color":"yellow","bold":false,"italic":false}

execute if entity @a[tag=custom_enchants] run function cartographer_custom_enchantments:load/load_message
execute if entity @a[tag=mob_abilities] run function cartographer_mob_abilities:load/load_message
execute if entity @a[tag=repair_stations] run function cartographer_repair_stations:load/load_message
execute if entity @a[tag=revised_books] run function cartographer_revised_books:load/load_message
execute if entity @a[tag=custom_statuses] run function cartographer_custom_statuses:load/load_message

tellraw @a {"text":"[Credits]","color":"red","bold":false,"italic":false,"hoverEvent":{"action":"show_text","value":[{"text":"Click me for datapack credits!"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/credits"}}

tag @a remove custom_enchants
tag @a remove mob_abilities
tag @a remove revised_books
tag @a remove repair_stations
tag @a remove custom_statuses