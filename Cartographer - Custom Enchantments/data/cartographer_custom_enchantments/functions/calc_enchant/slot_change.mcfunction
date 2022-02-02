scoreboard players operation $temp ca.susu = @s ca.selecteditem
execute store result score @s ca.selecteditem run data get entity @s SelectedItemSlot
execute unless score $temp ca.susu = @s ca.selecteditem run function cartographer_custom_enchantments:inventory_changed
execute unless score $temp ca.susu = @s ca.selecteditem run tag @s add slot_changed
