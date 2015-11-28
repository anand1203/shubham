<script Language=ms>
	@funi Partition(@i a[],@i beg,@i end)
		@i left, right, temp, loc;
		@b done;

		left = beg;
		right = end;
		loc = left;
		done=false;

		@while (!done)
			@while ( (a[loc]<=a[right]) && (loc!=right) )			
				right--;
			@whilend
			@if (loc==right)
				done=true;
			@else
				@if(a[loc]>a[right])
					temp=a[loc];
					a[loc]=a[right];
					a[right]=temp;
					loc=right;					
				@ifend
			@ifend
			@if(!done)
				@while ( (a[loc]>=a[left]) && (loc!=left) )			
					left++;
				@whilend
				@if (loc==left)
					done=true;
				@else
					@if(a[loc]>a[left])
						temp=a[loc];
						a[loc]=a[left];
						a[left]=temp;
						loc=left;					
					@ifend
				@ifend
			@ifend
		@whilend
			return loc;
	@funiend

	@sub QuickSort( @i a[], @i beg, @i end)
		@i j,loc;
		@if (beg<end)
			loc = Partition(a,beg,end);
			@hprint ("<H2>After Pass</H2>");
			@hprint ("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			@hprint ("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			@hprint ("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			@for (j=0;j<10;j++)
				@hprint ("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>"+a[j] +"</B>");
			@forend
			QuickSort(a,beg,loc-1);
			QuickSort(a,loc+1,end);			
		@ifend
	
	@subend
	
	@begin
		@i arr[] = {92, 508, 120, 5, 17, 9, 25, 842, 21, 144};

		@hprint("<BR><HR><H2>Algorithm : Quick Sort</H2><HR>");		
		QuickSort(arr,0,9);
	@end	
</script>