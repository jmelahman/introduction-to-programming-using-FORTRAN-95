program inputfile
!Imports values from a file, uses the intrinsic mod
!function to find the parity then sends result to a
!.txt file
implicit none
    real :: x
    integer :: i
!reads from file, assigns as 10
    open(10,file='/home/jamison/Documents/Fortran Practice/files/10numbers.txt')
!creates output file and assigns as 20
    open(20,file='/home/jamison/Documents/Fortran Practice/files/outputparity.txt')
    do i=1,10
    read(10,*) x
        if (mod(x,2.0) > 0) then
            print *, x
            write(20,*) x
            write(20,*) " is odd"
        else
            print *, x
            write(20,*) x
            write(20,*) " is even"
        end if
    end do
    print*, 'finished'
end program inputfile
