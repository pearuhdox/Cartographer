execute if score $tax_count charon.gmr matches 80 if score $progressive_tax charon.gmr matches 2 run function cartographer_charon:taxes/progressive/increase_vanish

scoreboard players operation $tax_count charon.gmr *= $2 ca.CONSTANT
scoreboard players operation $tax_durability charon.gmr *= $2 ca.CONSTANT

execute if score $tax_count charon.gmr matches ..1 run scoreboard players set $tax_count charon.gmr 1
execute if score $tax_durability charon.gmr matches ..1 run scoreboard players set $tax_durability charon.gmr 1

execute if score $tax_count charon.gmr matches 81.. run scoreboard players set $tax_count charon.gmr 80
execute if score $tax_durability charon.gmr matches 81.. run scoreboard players set $tax_durability charon.gmr 80