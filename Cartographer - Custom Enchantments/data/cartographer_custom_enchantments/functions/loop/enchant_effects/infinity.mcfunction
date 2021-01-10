execute if entity @s[scores={infinity=1..}] run data modify block 4206899 0 4206900 Items append from storage cartographer_core:pldata working_data.infinity.slot0
execute if entity @s[scores={infinity=1..}] run data modify block 4206899 0 4206900 Items append from storage cartographer_core:pldata working_data.infinity.slot1
execute if entity @s[scores={infinity=1..}] run data modify block 4206899 0 4206900 Items append from storage cartographer_core:pldata working_data.infinity.slot2
execute if entity @s[scores={infinity=1..}] run data modify block 4206899 0 4206900 Items append from storage cartographer_core:pldata working_data.infinity.slot3
execute if entity @s[scores={infinity=1..}] run data modify block 4206899 0 4206900 Items append from storage cartographer_core:pldata working_data.infinity.slot4
execute if entity @s[scores={infinity=1..}] run data modify block 4206899 0 4206900 Items append from storage cartographer_core:pldata working_data.infinity.slot5
execute if entity @s[scores={infinity=1..}] run data modify block 4206899 0 4206900 Items append from storage cartographer_core:pldata working_data.infinity.slot6
execute if entity @s[scores={infinity=1..}] run data modify block 4206899 0 4206900 Items append from storage cartographer_core:pldata working_data.infinity.slot7
execute if entity @s[scores={infinity=1..}] run data modify block 4206899 0 4206900 Items append from storage cartographer_core:pldata working_data.infinity.slot8

execute if entity @s[scores={infinity=1..}] run data modify block 4206900 0 4206899 Items append from storage cartographer_core:pldata working_data.infinity.offhand

execute if entity @s[scores={infinity=1..}] as @s run loot replace entity @s hotbar.0 9 mine 4206899 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={infinity=1..}] as @s run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206899 air{drop_contents:1b}

tag @s remove doing_infinity