
# Main clas
class Array
	def heapsort
		self.dup.heapsort #creates a copy in order to not alter the object used
  end

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
