execute store result score $current_ct taxes.var run data get storage cartographer_charon:player temp.Count

scoreboard players operation $inverse_tax_ct taxes.var = $100 ca.CONSTANT
scoreboard players operation $inverse_tax_ct taxes.var -= $tax_count charon.gmr

# Get X% of the item where X is the inverse of the tax_count rule (aka 10 -> 90%)
scoreboard players operation $current_ct taxes.var *= $inverse_tax_ct taxes.var
scoreboard players operation $current_ct taxes.var /= $100 ca.CONSTANT

# Always keep a minimum count of 1
execute if score $current_ct taxes.var matches ..0 run scoreboard players set $current_ct taxes.var 1

execute store result storage cartographer_charon:player temp.Count byte 1 run scoreboard players add $current_ct taxes.var 0