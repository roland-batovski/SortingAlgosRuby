#modificat
#modificat sergiu
class Array

	# Set the maximum Fixnum value
	FIXNUM_MAX = (2**(0.size * 8 -2) -1);

	def mergesort
		self.dup.merge_sort(0,self.length)
	end

	#MERGE SORT function
	def merge_sort(l,r)
		if l+1<r
			q=(l+r)/2
			merge_sort(l,q)
			merge_sort(q,r)
			merge(l,q,r)
		end
		self
	end

	#MERGE function
	def merge(l,q,r)
		n1, n2 = q-l, r-q;
		left  = Array.new(n1+1);
		right = Array.new(n2+1);

		for i in 0..n1-1
			left[i] = self[l+i];
		end

		for j in 0..n2-1
			right[j] = self[q+j];
		end

		left[n1], right[n2] = FIXNUM_MAX, FIXNUM_MAX;

		i, j = 0, 0;
		for k in l..r-1
			if left[i] <= right[j]
				self[k] = left[i];
				i += 1;
			else
				self[k] = right[j];
				j += 1;
			end
		end
	end

end
