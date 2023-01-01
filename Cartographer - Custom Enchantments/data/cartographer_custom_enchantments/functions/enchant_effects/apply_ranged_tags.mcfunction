scoreboard players operation $temp ca.var = @s ca.cauterize
scoreboard players operation $temp ca.var += @s ca.bleed
scoreboard players operation $temp ca.var += @s ca.electrode
scoreboard players operation $temp ca.var += @s ca.frost
scoreboard players operation $temp ca.var += @s ca.expose
scoreboard players operation $temp ca.var += @s ca.possess
scoreboard players operation $temp ca.var += @s ca.infect
scoreboard players operation $temp ca.var += @s ca.flash
scoreboard players operation $temp ca.var += @s ca.explosive
scoreboard players operation $temp ca.var += @s ca.tempo_theft
scoreboard players operation $temp ca.var += @s ca.flame
scoreboard players operation $temp ca.var += @s ca.punch
execute if score $temp ca.var matches 1.. at @s as @e[type=#bb:arrow,limit=3,distance=..7,sort=nearest,nbt=!{inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/branch/set_custom_arrow
