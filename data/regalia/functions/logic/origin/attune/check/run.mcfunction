## attune - check/run
# remain
function regalia:logic/origin/attune/remain/_m
# call
execute if score $calc.time_day rga.data matches 0.. run function regalia:logic/origin/attune/check/progress/_m
execute if score $calc.time_day rga.data matches ..-1 run function regalia:logic/origin/attune/check/unlock