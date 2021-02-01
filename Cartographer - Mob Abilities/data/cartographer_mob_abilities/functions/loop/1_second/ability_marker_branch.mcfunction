scoreboard players add @s helper_lifetime 1
execute if score @s[tag=hookshot_target] helper_lifetime matches 3.. run kill @s
execute if score @s helper_lifetime matches 11.. run kill @s