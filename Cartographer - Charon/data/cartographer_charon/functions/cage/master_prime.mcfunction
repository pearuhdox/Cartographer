scoreboard players set $do_prime cage.var 1

#Do not run prime if it has already been run with cage active and items dropped.
execute if score $cage charon.gmr matches 1.. if data storage cartographer_charon:bundle bundle.tag.Items[] run scoreboard players set $do_prime cage.var 0

#If priming is still allowed do it.
execute if score $do_prime cage.var matches 1.. run function cartographer_charon:cage/prime_on_death
scoreboard players set $do_prime cage.var 0