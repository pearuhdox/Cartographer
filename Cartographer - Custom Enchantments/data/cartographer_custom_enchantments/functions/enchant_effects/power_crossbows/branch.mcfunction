scoreboard players set @s helper_lifetime 1

#Apply Power data to the arrow.
execute if score $ranged power matches 1 run data modify entity @s damage set value 3.0
execute if score $ranged power matches 2 run data modify entity @s damage set value 3.5
execute if score $ranged power matches 3 run data modify entity @s damage set value 4.0
execute if score $ranged power matches 4 run data modify entity @s damage set value 4.5
execute if score $ranged power matches 5 run data modify entity @s damage set value 5.0
execute if score $ranged power matches 6 run data modify entity @s damage set value 5.5
execute if score $ranged power matches 7 run data modify entity @s damage set value 6.0
execute if score $ranged power matches 8 run data modify entity @s damage set value 6.5
execute if score $ranged power matches 9 run data modify entity @s damage set value 7.0
execute if score $ranged power matches 10 run data modify entity @s damage set value 7.5