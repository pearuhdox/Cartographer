
#\Interaction Blocker
execute if score $player_has_blocker bbl.storage matches 1 as @e[type=slime,tag=bbl.block_interaction] at @s run function bb:lib/item_effects/block_interaction/schedule/global
