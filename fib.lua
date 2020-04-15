#!/usr/bin/env luajit
local function printf(fmt, ...) io.write(string.format(fmt, ...)) return end
local golden=(1+math.sqrt(5))/2
local a,b=1,1
for i=1,20 do
	printf("%3d %5d %6.3f %5d\n", i, a, b/a, golden^(i-2))
	a,b=b,a+b
end
