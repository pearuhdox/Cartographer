
execute if entity @s[tag=!dies.init] run function dies:func/init
execute if score @s dies.relog matches 1.. run function dies:func/init
