execute if score $slot ca.inf_cdl_var matches 0 if score @s ca.inf_ch_0 matches 1.. run scoreboard players remove @s ca.inf_ch_0 1
execute if score $slot ca.inf_cdl_var matches 1 if score @s ca.inf_ch_1 matches 1.. run scoreboard players remove @s ca.inf_ch_1 1
execute if score $slot ca.inf_cdl_var matches 2 if score @s ca.inf_ch_2 matches 1.. run scoreboard players remove @s ca.inf_ch_2 1
execute if score $slot ca.inf_cdl_var matches 3 if score @s ca.inf_ch_3 matches 1.. run scoreboard players remove @s ca.inf_ch_3 1
execute if score $slot ca.inf_cdl_var matches 4 if score @s ca.inf_ch_4 matches 1.. run scoreboard players remove @s ca.inf_ch_4 1
execute if score $slot ca.inf_cdl_var matches 5 if score @s ca.inf_ch_5 matches 1.. run scoreboard players remove @s ca.inf_ch_5 1
execute if score $slot ca.inf_cdl_var matches 6 if score @s ca.inf_ch_6 matches 1.. run scoreboard players remove @s ca.inf_ch_6 1
execute if score $slot ca.inf_cdl_var matches 7 if score @s ca.inf_ch_7 matches 1.. run scoreboard players remove @s ca.inf_ch_7 1
execute if score $slot ca.inf_cdl_var matches 8 if score @s ca.inf_ch_8 matches 1.. run scoreboard players remove @s ca.inf_ch_8 1


execute if score $slot ca.inf_cdl_var matches 0 run scoreboard players operation $charges ca.inf_ch_var = @s ca.inf_ch_0
execute if score $slot ca.inf_cdl_var matches 1 run scoreboard players operation $charges ca.inf_ch_var = @s ca.inf_ch_1
execute if score $slot ca.inf_cdl_var matches 2 run scoreboard players operation $charges ca.inf_ch_var = @s ca.inf_ch_2
execute if score $slot ca.inf_cdl_var matches 3 run scoreboard players operation $charges ca.inf_ch_var = @s ca.inf_ch_3
execute if score $slot ca.inf_cdl_var matches 4 run scoreboard players operation $charges ca.inf_ch_var = @s ca.inf_ch_4
execute if score $slot ca.inf_cdl_var matches 5 run scoreboard players operation $charges ca.inf_ch_var = @s ca.inf_ch_5
execute if score $slot ca.inf_cdl_var matches 6 run scoreboard players operation $charges ca.inf_ch_var = @s ca.inf_ch_6
execute if score $slot ca.inf_cdl_var matches 7 run scoreboard players operation $charges ca.inf_ch_var = @s ca.inf_ch_7
execute if score $slot ca.inf_cdl_var matches 8 run scoreboard players operation $charges ca.inf_ch_var = @s ca.inf_ch_8

