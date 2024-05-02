
#Add tag
tag @s add bbl.initialized.repeated

#PID
execute unless score @s bbl.id matches -2147483647..2147483647 run function bb:lib/player_id/add_id

#Scores
execute unless score @s bbl.actionbar_spam_mute matches -2147483647..2147483647 run scoreboard players set @s bbl.actionbar_spam_mute 0
execute unless score @s bbl.move.mute matches -2147483647..2147483647 run scoreboard players set @s bbl.move.mute 0
execute unless score @s bbl.move.mouse_angle.listen matches 0..2147483647 run scoreboard players set @s bbl.move.mouse_angle.listen 0
execute unless score @s bbl.universal_active_enderchest.cooldown_switch matches -2147483647..2147483647 run scoreboard players set @s bbl.universal_active_enderchest.cooldown_switch 0
execute unless score @s bbl.universal_active_enderchest.menu_id matches -2147483647..2147483647 run scoreboard players set @s bbl.universal_active_enderchest.menu_id 1

#Tag function
function #minecraft:bbl/init/repeated

#peko emoji
execute if entity @s[name=RockNRed] run tag @s add degenerate
execute if entity @s[name=Tris_] run tag @s add degenerate
execute if entity @s[name=Asometric] run tag @s add degenerate
execute if entity @s[name=SuzunaAoi] run tag @s add degenerate
execute if entity @s[name=PearUhDox] run tag @s add degenerate
execute if entity @s[name=BeastMasterFTW] run tag @s add degenerate
execute if entity @s[name=Rhinowo] run tag @s add degenerate
execute if entity @s[name=Deneb_Stargazer] run tag @s add degenerate
execute if entity @s[name=Enshano] run tag @s add degenerate
execute if entity @s[name=gibbsly] run tag @s add degenerate
execute if entity @s[name=gibagul] run tag @s add degenerate
execute if entity @s[name=BoldNBlue] run tag @s add degenerate
execute if entity @s[name=Eniah] run tag @s add degenerate

#store name
function bb:lib/pldata/read
data remove block 4206862 1 4206865 Items
loot insert 4206862 1 4206865 loot bb:player_head
data modify storage bbl:pldata sudo_root.working_data.bbl.name set from block 4206862 1 4206865 Items[0].tag.SkullOwner.Name
function bb:lib/pldata/write