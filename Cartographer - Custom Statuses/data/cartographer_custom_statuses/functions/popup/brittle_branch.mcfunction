execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/popup

scoreboard players set $brittle_popup_amt ca.status_var 0
execute if score @s ca.effect_brittle_duration matches 1.. run scoreboard players operation $brittle_popup_amt ca.status_var = @s ca.effect_brittle_level
scoreboard players operation $brittle_popup_amt ca.status_var *= $20 ca.CONSTANT
execute if score @s ca.brittle_stored matches 1.. run scoreboard players operation $brittle_popup_amt ca.status_var -= @s ca.brittle_stored

execute if score $brittle_popup_amt ca.status_var matches 90.. on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 10+","color":"#d19862","bold":true,"italic":false}'
execute if score $brittle_popup_amt ca.status_var matches 81..90 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 9","color":"#d19862","bold":true,"italic":false}'
execute if score $brittle_popup_amt ca.status_var matches 71..80 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 8","color":"#d19862","bold":true,"italic":false}'
execute if score $brittle_popup_amt ca.status_var matches 61..70 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 7","color":"#d19862","bold":true,"italic":false}'
execute if score $brittle_popup_amt ca.status_var matches 51..60 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 6","color":"#d19862","bold":true,"italic":false}'
execute if score $brittle_popup_amt ca.status_var matches 41..50 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 5","color":"#d19862","bold":true,"italic":false}'
execute if score $brittle_popup_amt ca.status_var matches 31..40 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 4","color":"#d19862","bold":true,"italic":false}'
execute if score $brittle_popup_amt ca.status_var matches 21..30 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 3","color":"#d19862","bold":true,"italic":false}'
execute if score $brittle_popup_amt ca.status_var matches 11..20 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 2","color":"#d19862","bold":true,"italic":false}'
execute if score $brittle_popup_amt ca.status_var matches 1..10 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"❄ 1","color":"#d19862","bold":true,"italic":false}'

execute if score @s ca.brittle_cdl matches 200.. on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"-=❄=-","color":"#d19862","bold":true,"italic":false}'


execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime -900
scoreboard players set @s ca.notice_time 1201
