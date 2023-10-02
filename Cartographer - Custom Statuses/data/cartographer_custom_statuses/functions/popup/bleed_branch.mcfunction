execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/popup

execute if score @s ca.effect_bleed matches 10.. on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 10+","color":"red","bold":true,"italic":false}'
execute if score @s ca.effect_bleed matches 9 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 9","color":"red","bold":true,"italic":false}'
execute if score @s ca.effect_bleed matches 8 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 8","color":"red","bold":true,"italic":false}'
execute if score @s ca.effect_bleed matches 7 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 7","color":"red","bold":true,"italic":false}'
execute if score @s ca.effect_bleed matches 6 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 6","color":"red","bold":true,"italic":false}'
execute if score @s ca.effect_bleed matches 5 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 5","color":"red","bold":true,"italic":false}'
execute if score @s ca.effect_bleed matches 4 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 4","color":"red","bold":true,"italic":false}'
execute if score @s ca.effect_bleed matches 3 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 3","color":"red","bold":true,"italic":false}'
execute if score @s ca.effect_bleed matches 2 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 2","color":"red","bold":true,"italic":false}'
execute if score @s ca.effect_bleed matches 1 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🌢 1","color":"red","bold":true,"italic":false}'

execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0
scoreboard players set @s ca.notice_time 71