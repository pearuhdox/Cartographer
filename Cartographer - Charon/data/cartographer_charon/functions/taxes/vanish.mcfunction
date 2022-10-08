scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100

function bb:lib/rng

execute if score $value bbl.rng <= $tax_vanish charon.gmr run scoreboard players set $vanish_flag taxes.var 1