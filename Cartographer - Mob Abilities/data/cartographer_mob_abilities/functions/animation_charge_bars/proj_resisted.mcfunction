execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/popup
execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run function cartographer_mob_abilities:animation_charge_bars/proj_resisted_branch

scoreboard players set @s ca.notice_time 71