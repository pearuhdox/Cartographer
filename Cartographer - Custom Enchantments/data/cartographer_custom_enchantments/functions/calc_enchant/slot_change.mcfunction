scoreboard players operation $temp ca.susu = @s ca.selecteditem
execute store result score @s ca.selecteditem run data get entity @s SelectedItemSlot
execute unless score $temp ca.susu = @s ca.selecteditem run tag @s add ca.core_check_inv
execute unless score $temp ca.susu = @s ca.selecteditem run scoreboard players set @s ca.core_delay_check 1