execute as @s positioned ~ -1 ~ run data modify block 0 0 0 Items append from entity @e[type=item,limit=1,sort=nearest,tag=infinity_holder] Item

execute if entity @s[tag=infinity_main] as @s run loot replace entity @s weapon.mainhand 1 mine 0 0 0 air{drop_contents:1b}
execute if entity @s[tag=infinity_off] as @s run loot replace entity @s weapon.offhand 1 mine 0 0 0 air{drop_contents:1b}

scoreboard players set @s helper_inf_cool 2