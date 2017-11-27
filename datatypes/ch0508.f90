program ch0508
!
! use the bit functions in Fortran to write out 
! a 32 bit integer number equivalenced with a real.
! We will use the transfer intrinsic as a sequence
! and zeroes.
!
implicit none
integer :: i, j
character (len=32) :: i_in_Bits=" "
real :: x = -1.0

  print *,'            1          2         3'
  print *,'1234678901234567890123456789012345678890'
  print *,i_in_Bits
  i = transfer(x,i)
  do j=0,31
    if (btest(i,j)) then
      i_in_Bits(32-j:32-j) = '1'
    else
      i_in_Bits(32-j:32-j) = '0'
    endif
  enddo
  print *,x
  print *,i_in_Bits

end program ch0508



