scoreboard players operation $old_lex_count ca.lexica_count = @s ca.lexica_count 
execute store result score @s ca.lexica_count run clear @s minecraft:knowledge_book{Lexica:1} 0

execute if score @s[gamemode=!creative] ca.lexica_count < $old_lex_count ca.lexica_count run function cartographer_core:give_lexica

#execute if entity @s[predicate=cartographer_core:lexica_recipe] run say do lexica things
#execute if entity @s[predicate=cartographer_core:lexica_recipe] run recipe take @s cartographer_core:lexica_dummy

#say hi

advancement revoke @s only cartographer_core:inventory_changed