local epi={
	model={
		fibonacci=function(step, factor) 
			local gschnitt=(1+math.sqrt(5))*.5
			step=step or 10
			factor=factor or gschnitt
			factor=factor/gschnitt
			return coroutine.wrap(function()
				local a,b=0,1
				for i=1,step do
					coroutine.yield(b)
					a,b=b*factor,(a+b)*factor
				end
			end)
		end,
		exp=function(start,factor)
			return coroutine.wrap(function()
				local start=start or 1
				local factor=factor or 1
				repeat
					coroutine.yield(start)
					start=start*factor
				until false
			end)
		end,
	}
}
return epi
