program ch0506
implicit none
! 
! exmaples of the use of the kind function 
! and the numeic inquiry functions
!
! integer arithmetic
!
! 32 bits is a common word size,
! and this leads quite cleanly 
! to the following 8 bit integers
! -128 to 127 10**2
! 16 bit integers
! -32768 to 32767 10**4
! 32 bit integers
! -2147483648 to 2147483647 10**9
!
! 64 bit integers are increasingly available
! leading to:
! -922337203685477508
! 9223372036854775807 10**19
!
! You may need to comment out some of the
! following depending on the hardware platform 
! and the compiler that you use.

integer :: i
integer (selected_int_kind(2)) :: i1
integer (selected_int_kind(4)) :: i2
integer (selected_int_kind(9)) :: i3
integer (selected_int_kind(10)) :: i4

! real arithmetic
!
! 32 bit and 64 bit reals are normally available
! 
! 32 bit reals 8 bit exponent, 24 bit mantissa
!
! 64 bit reals 11 bit exponent, 53 bit mantissa
!
real :: r
real (selected_real_kind(6,37)) :: r1
real (selected_real_kind(15,307)) :: r2
real (selected_real_kind(15,310)) :: r3

print *,' ' 
print *,' integer values'
print *,' kind    huge'
print *,' '
print *,' ',kind(i),' ',huge(i)
print *,' '
print *,' ',kind(i1),' ',huge(i1)
print *,' ',kind(i2),' ',huge(i2)
print *,' ',kind(i3),' ',huge(i3)
print *,' ',kind(i4),' ',huge(i4)

print *,' ' 
print *,' real values'
print *,' kind    huge                  ' , &
'                precision       epsilon'
print *,' '
print *,' ',kind(r),' ',huge(r),&
'             ',precision(r),' ',epsilon(r)
print *,' '
print *,' ',kind(r1),' ',huge(r1),&
'             ',precision(r1),' ',epsilon(r1)
print *,' ',kind(r2),' ',huge(r2),&
' ',precision(r2),' ',epsilon(r2)
print *,' ',kind(r3),' ',huge(r3),&
' ',precision(r3),' ',epsilon(r3)

end program ch0506

