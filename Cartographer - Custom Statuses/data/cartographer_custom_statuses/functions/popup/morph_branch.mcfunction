execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/popup

execute if score @s ca.morph_time matches 66.. on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 4⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 46..65 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 3⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 26..45 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 2⌛","color":"white","bold":true,"italic":false}'
execute if score @s ca.morph_time matches 1..26 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🪶 1⌛","color":"white","bold":true,"italic":false}'

playsound minecraft:block.note_block.hat hostile @a[distance=..10] ~ ~ ~ 0.75 0.5

execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0
scoreboard players set @s ca.notice_time 71