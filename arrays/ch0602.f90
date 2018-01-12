program ch0602
!
! An example of parameterising the size of an
! an array so we don't have to modify the program
! each time there are a different number of people.
implicit none

integer, parameter :: number_of_people = 10
real :: total = 0.0, average = 0.0
integer :: person
! Length of array has been parameterised.
real, dimension(1:number_of_people) :: weight

do person=1, number_of_people
  print *, ' type in the weight for person ', person
  read *, weight(person)
  total = total + weight(person)
enddo

average = total / number_of_people
print *, ' The total of the weights is ', total
print *, ' Average weight is ', average
print *, ' ', number_of_people, ' Weights were '

do person=1, number_of_people
  print *, weight(person)
enddo

end program ch0602
