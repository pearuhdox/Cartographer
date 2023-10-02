execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/popup

execute if score @s ca.effect_infect matches 11.. on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 10⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 10 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 9⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 9 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 8⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 8 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 7⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 7 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 6⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 6 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 5⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 5 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 4⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 4 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 3⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 3 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 2⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 2 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 1⌛","color":"dark_gray","bold":true,"italic":false}'
execute if score @s ca.effect_infect matches 1 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"☠ 0⌛","color":"dark_gray","bold":true,"italic":false}'

execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0
scoreboard players set @s ca.notice_time 71
