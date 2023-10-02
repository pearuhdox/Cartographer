execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:animation_charge_bars/create_plate
execute if score @s ability_charge matches 1 if entity @s[tag=ca.animation_text,type=text_display] run tag @s add ca.charge_bar

execute if score @s ability_charge matches 1 on passengers if entity @s[tag=ca.animation_text,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊▊▊▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"⚓","color":"gold","bold":true,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊▊▊▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 5 on passengers if entity @s[tag=ca.animation_text,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊▊▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"⚓","color":"gold","bold":true,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊▊▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 9 on passengers if entity @s[tag=ca.animation_text,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"⚓","color":"gold","bold":true,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 13 on passengers if entity @s[tag=ca.animation_text,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"⚓","color":"gold","bold":true,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 17 on passengers if entity @s[tag=ca.animation_text,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"⚓","color":"gold","bold":true,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'