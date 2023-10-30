execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_custom_statuses:popup/morph_popup

data merge entity @s {interpolation_duration:1,start_interpolation:0,transformation:[0.650f, 0.000f, 0.000f,0.000f,0.000f, 0.650f, 0.000f,0.300f,0.000f, 0.000f, 0.650f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}

execute if score @s ca.morph_time matches 186.. on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 10⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 166..185 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 9⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 146..165 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 8⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 126..145 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 7⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 106..125 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 6⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 86..105 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 5⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 66..85 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 4⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 46..65 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 3⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 26..45 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 2⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 1..26 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 1⌛","color":"white","bold":true,"italic":false}'

playsound minecraft:block.note_block.hat hostile @a[distance=..10] ~ ~ ~ 0.75 0.5

execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0
scoreboard players set @s ca.notice_time 71