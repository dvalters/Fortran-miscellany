! from helloWorld.pf
!@test
subroutine testHelloWorld()
  use pfunit_mod
  implicit none
#line 6 "helloWorld.pf"
  call assertEqual("Hello World!", "Hello World!", &
 & location=SourceLocation( &
 & 'helloWorld.pf', &
 & 6) )
  if (anyExceptions()) return
#line 7 "helloWorld.pf"
end subroutine testHelloWorld


module WraphelloWorld
   use pFUnit_mod
   implicit none
   private

contains


end module WraphelloWorld

function helloWorld_suite() result(suite)
   use pFUnit_mod
   use WraphelloWorld
   type (TestSuite) :: suite

   external testHelloWorld


   suite = newTestSuite('helloWorld_suite')

   call suite%addTest(newTestMethod('testHelloWorld', testHelloWorld))


end function helloWorld_suite

