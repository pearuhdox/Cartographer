scoreboard players operation $rng_max bbl.rng = $unb rph.durability
scoreboard players add $rng_max bbl.rng 1

scoreboard players set $rng_min bbl.rng 1

function bb:lib/rng

execute if score $value bbl.rng <= $unb rph.durability run scoreboard players set $dmg rph.durability 0