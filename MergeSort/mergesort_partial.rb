class Array

	# Set the maximum Fixnum number
	FIXNUM_MAX = (2**(0.size * 8 -2) -1);
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