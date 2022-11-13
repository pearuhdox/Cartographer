scoreboard players operation $current ca.var = @s ca.current
scoreboard players operation $ricochet ca.var = @s ca.ricochet
scoreboard players operation $tempest ca.var = @s ca.tempest
scoreboard players operation $duelist ca.var = @s ca.duelist
scoreboard players operation $hunter ca.var = @s ca.hunter
scoreboard players operation $singe ca.var = @s ca.singe
scoreboard players operation $frostbite ca.var = @s ca.frostbite
scoreboard players operation $executioner ca.var = @s ca.executioner
scoreboard players operation $exposing ca.var = @s ca.exposing
scoreboard players operation $possession ca.var = @s ca.possession
scoreboard players operation $stunning ca.var = @s ca.stunning
scoreboard players operation $infection ca.var = @s ca.infection
scoreboard players operation $electrocute ca.var = @s ca.electrocute
scoreboard players operation $bleeding ca.var = @s ca.bleeding
scoreboard players operation $fire_aspect ca.var = @s ca.fire_aspect
scoreboard players operation $cauterize ca.var = @s ca.cauterize
scoreboard players operation $collapse ca.var = @s ca.collapse

scoreboard players operation $wavedash ca.var = @s ca.wavedash

scoreboard players operation $loyalty ca.var = @s ca.loyalty

#Get the Wavedash ID if Wavedash exists
execute if score @s ca.wavedash matches 1.. run function cartographer_custom_enchantments:enchant_effects/wavedash/get_id

scoreboard players operation $test ca.var = @s ca.executioner
