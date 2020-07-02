execute as @s positioned ~ -1 ~ run tp @e[type=item,limit=1,sort=nearest,tag=infinity_holder,distance=..1] ~ -1 ~
execute as @s positioned ~ -1 ~ run data merge entity @e[type=item,limit=1,sort=nearest,tag=infinity_holder,distance=..1] {Age:5998}
execute as @s positioned ~ -1 ~ run execute if entity @s[scores={infinity=1}] run data modify entity @e[type=item,limit=1,sort=nearest,tag=infinity_holder] Item merge from entity @s SelectedItem


execute as @s run tag @s remove infinity_main
execute as @s run tag @s remove infinity_off

execute if entity @s[scores={infinity=1}] run tag @s add infinity_main
execute if entity @s[scores={infinity=2}] run tag @s add infinity_off