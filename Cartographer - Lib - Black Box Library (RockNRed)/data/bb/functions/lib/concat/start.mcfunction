
#Clear internal
data remove storage bbl:concat sudo_root.internal

#Read-in user data
data modify storage bbl:concat sudo_root.internal.queue set from storage bbl:concat sudo_root.array

#Init empty data
data modify storage bbl:concat sudo_root.internal.build.string set value ""

#Loop data
function bb:lib/concat/loop
