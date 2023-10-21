execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/popup

execute if score @s ca.effect_shock matches 201.. on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 10⌛","color":"aqua","bold":true,"italic":false}'
execute if score @s ca.effect_shock matches 181..200 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 9⌛","color":"aqua","bold":true,"italic":false}'
execute if score @s ca.effect_shock matches 161..180 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 8⌛","color":"aqua","bold":true,"italic":false}'
execute if score @s ca.effect_shock matches 141..160 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 7⌛","color":"aqua","bold":true,"italic":false}'
execute if score @s ca.effect_shock matches 121..140 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 6⌛","color":"aqua","bold":true,"italic":false}'
execute if score @s ca.effect_shock matches 101..120 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 5⌛","color":"aqua","bold":true,"italic":false}'
execute if score @s ca.effect_shock matches 81..100 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 4⌛","color":"aqua","bold":true,"italic":false}'
execute if score @s ca.effect_shock matches 61..80 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 3⌛","color":"aqua","bold":true,"italic":false}'
execute if score @s ca.effect_shock matches 41..60 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 2⌛","color":"aqua","bold":true,"italic":false}'
execute if score @s ca.effect_shock matches 21..40 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 1⌛","color":"aqua","bold":true,"italic":false}'
#execute if score @s ca.effect_shock matches 1..19 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"⚡ 1⌛","color":"aqua","bold":true,"italic":false}'

execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0
scoreboard players set @s ca.notice_time 71
