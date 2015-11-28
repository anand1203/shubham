<script Language=ms>
	
	@begin
	
	@i i,j, temp;
	@i a[] = {19, 656, 99, 65, 723, 121, 55, 176, 32, 3};

	@hprint("<BR><HR><H2>Algorithm : Insertion Sort</H2><HR>");
	@for (i=1;i<10;i++)

		temp = a[i];
		j=i-1;
	
		@while (j>=0 && a[j]>temp)
		
			a[j+1]=a[j];

			j--;
		@whilend
		a[j+1]=temp;

		@hprint ("<H2>After Pass " + i +"</H2>");
		@hprint ("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		@hprint ("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		@hprint ("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		@for (j=0;j<10;j++)
			@hprint ("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B> " + a[j] +" </B>");
		@forend
		
	@forend
	@end	
</script>