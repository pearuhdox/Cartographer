execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:animation_charge_bars/create_plate

execute if score @s ability_charge matches 1 on passengers if entity @s[tag=ca.animation_charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊▊▊▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"👁","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊▊▊▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 26 on passengers if entity @s[tag=ca.animation_charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊▊▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"👁","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊▊▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 51 on passengers if entity @s[tag=ca.animation_charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"👁","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 76 on passengers if entity @s[tag=ca.animation_charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"👁","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 101 on passengers if entity @s[tag=ca.animation_charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"👁","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'