
# Main clas
class Array

	def heapsort
		self.dup.heapsort! #creates a copy in order to not alter the object used
	end

	def heapsort!
		#MAKE-HEAP function
		#in pseudo-code, heapify only called once, so inline it here
		((length - 2)/ 2 ).downto(0) {|start| heapify(start, length - 1)}
		#HEAP-SORT function
		# "end" is a ruby keyword
		(length - 1).downto(1) do |end_|
			self[end_], self[0] = self[0], self[end_]
			heapify(0, end_ - 1)
		end
		self
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
end