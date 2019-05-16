module gamemodule 
implicit none 

    integer :: level = 1 
    integer::x
    integer::y
    

 contains

    subroutine checker()
    implicit none

     ! check the logical condition using if the two input are the same
       if (x == y ) then
       
       !if condition is true then increase the level 
       level = level + 1
    
       else
    
       level = level - 1
    
       end if
 
   end subroutine checker

end module gamemodule

program game 
use gamemodule
implicit none 

integer ::input_a,input_b

print  *, 'Welcome to Guess Game'

   ! Start Game and Continue until level is zero  
   do while (level > 0)
   
      print  *, "Current level: ", level
      
      ! Receive user Input
      print  *, 'Enter Input A'  
      read *,input_a
      print  *, 'Enter Input B'  
      read *,input_b
     
      x = input_a
      
      y = input_b
      
      ! Check if Input A is equal to B using checker sub module
      call checker()
   end do 
   
   print  *, 'Game Over..'

end program game  