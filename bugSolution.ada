```ada
procedure Example_Corrected is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1,2,3,4,5,6,7,8,9,10);
begin
   for I in My_Arr'Range loop
      -- Correct way to access array elements using 'Range attribute
      My_Arr(I) := My_Arr(I) * 2; 
   end loop;
   for I in My_Arr'Range loop
      Put_Line(My_Arr(I)'Img); -- No error here
   end loop;
exception
   when others =>
      Put_Line("An unexpected error occurred");
end Example_Corrected;
```