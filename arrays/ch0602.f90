program ch0602
!
! An example of parameterising the size of an
! an array so we don't have to modify the program
! each time there are a different number of people.
implicit none

integer, parameter :: number_of_people = 10
real :: total_weight = 0.0, average_weight = 0.0
real :: total_height = 0.0, average_height = 0.0

integer :: person
! Length of array has been parameterised.
real, dimension(1:number_of_people) :: weight
real, dimension(1:number_of_people) :: height

do person=1, number_of_people
  print *, ' type in the weight for person ', person
  read *, weight(person)
  print *, ' type in the height for person ', person
  read *, height(person)
  total_weight = total_weight + weight(person)
  total_height = total_height + height(person)
enddo

average_weight = total_weight / number_of_people
average_height = total_height / number_of_people
print *, ' The total of the weights is ', total_weight
print *, ' Average weight is ', average_weight
print *, ' ', number_of_people, ' Weights were '

print *, ' The total of the heights is ', total_height
print *, ' Average height is ', average_height
print *, ' ', number_of_people, ' Heights were '

do person=1, number_of_people
  print *, weight(person)
  print *, height(person)
enddo

end program ch0602
