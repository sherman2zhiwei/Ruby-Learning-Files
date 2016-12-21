def stock_picker(array)
	max_index = array.length - 1
	max = 0 
	min_day = 0
	max_day = 0
	for k in (0..max_index)
		for i in (k+1..max_index)
			if array[i] - array[k] > max
				max = array[i] - array[k]
				min_day = k
				max_day = i
			end
		end
	end

	puts ([min_day, max_day])
end

stock_picker([17,15,6,9,3,8,6,1,10])