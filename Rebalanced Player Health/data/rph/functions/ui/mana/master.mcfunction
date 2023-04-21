scoreboard players operation $mana_odd rph.act_bar = $mana rph.act_bar

scoreboard players operation $mana_odd rph.act_bar %= $2 rph.var

scoreboard players operation $mana_max rph.act_bar = $20 rph.var

scoreboard players operation $mana_max rph.act_bar -= $mana rph.act_bar

execute unless score $mana_max rph.act_bar matches 0 run function rph:ui/mana/empty

execute unless score $mana rph.act_bar matches 0 run function rph:ui/mana/full