execute on passengers if entity @s[tag=ca.animation_text,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run tag @s add ca.popup_notice

execute on passengers if entity @s[tag=ca.animation_text,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 Cleansed 🗡","color":"light_purple","bold":true,"italic":false}'

execute on passengers if entity @s[tag=ca.animation_text,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0
scoreboard players set @s ca.notice_time 61
