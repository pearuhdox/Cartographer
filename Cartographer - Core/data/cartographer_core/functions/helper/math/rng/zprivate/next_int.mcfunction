###
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function cartographer_core:helper/math/rng/lcg

scoreboard players operation #temp math = out math
scoreboard players operation out math %= #range math
scoreboard players operation #temp math -= out math
scoreboard players operation #temp math += #m1 math
execute if score #temp math matches ..-1 run function cartographer_core:helper/math/rng/zprivate/next_int