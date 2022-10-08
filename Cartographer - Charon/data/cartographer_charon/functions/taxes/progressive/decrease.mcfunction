execute unless score $tax_vanish charon.gmr matches 1.. run scoreboard players operation $tax_count charon.gmr /= $2 ca.CONSTANT
execute unless score $tax_vanish charon.gmr matches 1.. run scoreboard players operation $tax_durability charon.gmr /= $2 ca.CONSTANT

execute if score $tax_vanish charon.gmr matches 1.. run function cartographer_charon:taxes/progressive/decrease_vanish

scoreboard players set @s taxes.time 0