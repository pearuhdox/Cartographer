scoreboard players operation $val rph.heart_flash_ani = @s rph.heart_flash_ani
scoreboard players operation $val rph.heart_flash_ani %= $5 rph.var

scoreboard players operation $val rph.mana_flash_ani = @s rph.mana_flash_ani
scoreboard players operation $val rph.mana_flash_ani %= $5 rph.var


scoreboard players operation $health rph.act_bar = @s rph.health
scoreboard players operation $abs rph.act_bar = @s rph.absorption
scoreboard players operation $armor rph.act_bar = @s rph.armor
scoreboard players operation $flash_heart rph.act_bar = @s rph.heart_flash_amt
scoreboard players operation $mana rph.act_bar = @s rph.mana
scoreboard players operation $air rph.act_bar = @s rph.air

scoreboard players set $hearts_made rph.act_bar 0
scoreboard players set $armor_made rph.act_bar 0

execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run function rph:ui/create
execute unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] run title @s actionbar {"text":" "}

execute if score @s rph.mana_flash_ani matches 1.. run scoreboard players remove @s rph.mana_flash_ani 1

execute if score @s rph.heart_flash_ani matches 1.. run scoreboard players remove @s rph.heart_flash_ani 1
execute if score @s rph.heart_flash_ani matches 0 run scoreboard players set @s rph.heart_flash_amt 0