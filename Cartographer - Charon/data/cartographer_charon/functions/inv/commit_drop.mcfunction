#If the xp_percent rule is enabled, this runs.
execute if score $xp_percent charon.gmr matches 0.. run function cartographer_charon:xp/apply_bundle

execute if score $multiplayer charon.gmr matches 1.. if score $player_count ca.gamerule matches 2.. run tag @s add ca.multi_mutex

execute unless entity @s[tag=ca.multi_mutex] if score $trader charon.gmr matches 1.. run function cartographer_charon:vill/add_to_villager
execute unless entity @s[tag=ca.multi_mutex] if score $death_drop charon.gmr matches 1.. run function cartographer_charon:death_drop/create
execute unless entity @s[tag=ca.multi_mutex] if score $collector charon.gmr matches 1.. run function cartographer_charon:collector/create
execute unless entity @s[tag=ca.multi_mutex] if score $cage charon.gmr matches 1.. run function cartographer_charon:cage/master

tag @s remove ca.multi_mutex

playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..8] ~ ~ ~ 1 0.8
playsound minecraft:block.sculk_vein.place player @a[distance=..8] ~ ~ ~ 2 0.5
playsound minecraft:entity.allay.hurt player @a[distance=..8] ~ ~ ~ 1 0.6