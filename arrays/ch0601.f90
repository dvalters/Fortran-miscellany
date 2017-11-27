program ch0601
implicit none

real :: Total=0.0, Average=0.0
real, dimension(1:12) :: Rainfall
integer :: month

print *,' type in the rainfall values'
print *,' one per line'

do Month=1,12
  read *, Rainfall(Month)
enddo

do Month=1,12
  Total = Total + Rainfall(Month)
enddo

Average = Total / 12
print *, ' Average monthly rainfall was:'
print *, Average

end program ch0601


