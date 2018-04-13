
/*=====================================================================
 *	!!!!!!!!!!!!!!!!Product Group Update !!!!!!!!!!!!!!!!!!!!!!!!!!   *
 *						Produck Geoup Update						  *
 *  @author MANSOORM MOHOMED										  *
 *  Note :- Change Location code and Company ILE table name			  *
 *  Select Database													  *
 *																	  *
 ********************* Select Company *********************************
 *		[HS Clothing Private Limited$Item Ledger Entry]				  *	
 *		[HS Marketing Private Limited$Item Ledger Entry]			  *
 *		[Hameedia Stores Pvt Ltd$Item Ledger Entry]					  *
 *																	  *
 *====================================================================*/

DECLARE @M_Item varchar(20), 
		@M_Variant varchar(10) , 
		@M_Dim1 varchar(10) ,
		@M_Dim2 varchar(10),
		@M_Dim3 varchar(20), 
		@M_Dim4 varchar(20),
		 
		@T_Item varchar(20), 
		@T_Variant varchar(10) , 
		@T_Dim1 varchar(10) ,
		@T_Dim2 varchar(10),
		@T_Dim3 varchar(20) 
	
		
   


DECLARE Cur_Master_VR CURSOR FAST_FORWARD FOR
	select [Item No_],Variant,[Variant Dimension 1],[Variant Dimension 2],[Variant Dimension 3],[Variant Dimension 3]
	from [Hameedia Stores Pvt Ltd$Item Variant Registration]
--where [Variant Dimension 2] in ('000S') -- chanage
--where [Variant Dimension 2] in ('000M')
--where [Variant Dimension 2] in ('000L')
--where [Variant Dimension 2] in ('00XL')
--where [Variant Dimension 2] in ('0XXL')
--where [Variant Dimension 2] in ('00XS')
--where [Variant Dimension 2] in ('ASST')
--where [Variant Dimension 3] not like '[A-Z]%'
--where [Variant Dimension 1] in ('XS','S','M','L','XL','XXL','XXXL')
--where [Variant Dimension 2] in ('0XS')
--where [Variant Dimension 2] in ('00S') -- chanage
--where [Variant Dimension 2] in ('00M')
--where [Variant Dimension 2] in ('00L')
--where [Variant Dimension 2] in ('0XL')
where [Variant Dimension 2] in ('XXL')



OPEN Cur_Master_VR
FETCH NEXT FROM Cur_Master_VR INTO @M_Item , @M_Variant ,@M_Dim1 ,@M_Dim2 ,@M_Dim3,@M_Dim4
WHILE @@FETCH_STATUS = 0
	BEGIN
	   Print @M_Item 
	   Print @M_Dim1 
	   Print @M_Dim2 
	   Print @M_Dim3 
	   
--###############
	   
  		UPDATE [Hameedia Stores Pvt Ltd$Item Variant Registration]	
		SET [Variant Dimension 2]='XXL'
		WHERE [Item No_]=@M_Item and Variant=@M_Variant

--##############		
  		FETCH NEXT FROM Cur_Master_VR INTO @M_Item , @M_Variant ,@M_Dim1 ,@M_Dim2 ,@M_Dim3,@M_Dim4
	END
				

CLOSE Cur_Master_VR
DEALLOCATE Cur_Master_VR


