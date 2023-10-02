execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/popup

execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 Cleansed 🗡","color":"light_purple","bold":true,"italic":false}'

execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0
scoreboard players set @s ca.notice_time 71
