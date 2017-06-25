program alloc_array
implicit none
    integer, allocatable,dimension(:) :: vector
!note syntax - dimension(:)
!to make a matrix with x rows and y columns,
!set dimension(:) to dimension(x,y,z)
    integer :: elements,i
!for matrix, integer :: row,col,count
    print *,'enter the number of elements in the vector'
    read *,elements
    allocate(vector(elements))
!allocates the correct amount of memory
    print *,' your vector is of size ',elements,'. Now enter each element'
    do i=1,elements
        read *,vector(i)
    end do
    print *,'This is your vector'
    do i=1,elements
        print *,vector(i)
    end do
!for matrix array use the following do statements
!   do row=1,2
!       count=0
!       do col =1,3
!           count=count+1
!           a(row,col)=count
!       end do
!   end do
!   do row=1,2
!       do col =1,3
!       print *,a(row,col)
!       end do
!   end do
deallocate(vector)
!tidies up the memory
end program alloc_array
