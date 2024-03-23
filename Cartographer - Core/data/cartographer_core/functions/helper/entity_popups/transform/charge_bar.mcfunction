data merge entity @s {interpolation_duration:1,start_interpolation:0,transformation:[0.800f, 0.000f, 0.000f,0.000f,0.000f, 0.800f, 0.000f,0.100f,0.000f, 0.000f, 0.800f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}

execute on passengers if entity @s[tag=ca.entity_popup_2] run data merge entity @s {interpolation_duration:1,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.285f,0f],scale:[1.25f,1.25f,1.25f]}}


tag @s add ca.charge_bar