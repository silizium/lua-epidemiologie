#!/usr/bin/env luajit
local function printf(fmt, ...) io.write(string.format(fmt, ...)) end
local epi=require"epidemiologie"
local last=1
local fib=epi.model.fibonacci(math.huge,1.26)
local exp=epi.model.exp(1,1.26)
print("  i      fib      exp")
for i=1,60 do
	local m1, m2=fib(), exp()
	printf("%3d %8.1f %8.1f\n",i, m1,m2)
end
