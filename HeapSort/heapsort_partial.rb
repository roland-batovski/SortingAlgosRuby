<<<<<<< HEAD
# Main clas
class Array
	def heapsort
		self.dup.heapsort #creates a copy in order to not alter the object used
  end

# HEAPIFY function
def heapify(start, end_)
	root = start
	min, left, right  = root, root*2, root*2+1
=======
class Array
>>>>>>> 8d27a0a3122043f7b025f3886a6d896c4f04f4c2

	# HEAPIFY function
	def heapify(start, end_)
		root = start
		min, left, right  = root, root*2, root*2+1

		if left <= end_ and self[left] > self[root]
			min = left
		end

		if right <= end_ and self[right] > self[min]
			min = right
		end

		if min != root
			self[min], self[root] = self[root], self[min]
			heapify(min, end_)
		end	
	end

<<<<<<< HEAD
	if min != root
		self[min], self[root] = self[root], self[min]
		heapify(min, end_)
	end
=======
>>>>>>> 8d27a0a3122043f7b025f3886a6d896c4f04f4c2
end