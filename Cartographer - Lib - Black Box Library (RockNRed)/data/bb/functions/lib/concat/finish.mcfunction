
#Output string
data modify storage bbl:concat sudo_root.string set from storage bbl:concat sudo_root.internal.concat

#Remove internal
data remove storage bbl:concat sudo_root.internal
