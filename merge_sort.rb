def sort(arr)
	length = arr.length
	if length > 1
		#divide
		arr1 = arr[0..length/2-1]
		arr2 = arr[length/2..length]

		#conquer
		sort(arr1)
		sort(arr2)	

		#merge
		counter = 0
		counter1 = 0
		counter2 = 0
		length1 = arr1.length
		length2 = arr2.length

		while counter1 <= length1-1 && counter2 <= length2-1
			if arr1[counter1] < arr2[counter2]
				arr[counter] = arr1[counter1]
				counter1 += 1
			else
				arr[counter] = arr2[counter2]
				counter2 += 1
				
			end
			counter += 1
		end

		if counter1 == length1
			arr[counter..length1+length2] = arr2[counter2..length2-1]
		else
			arr[counter..length1+length2] = arr1[counter1..length1-1]
		end

	end
	arr
end

arr = [10, 5, 300, 2]

p sort(arr)