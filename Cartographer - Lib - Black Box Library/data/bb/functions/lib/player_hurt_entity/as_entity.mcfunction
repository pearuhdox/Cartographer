
execute if entity @s[tag=no_iframes] run function bb:lib/no_iframes

execute if entity @s[tag=!no_iframes] if score $bbl.config.no_iframes bbl.storage matches 1 run function bb:lib/no_iframes
