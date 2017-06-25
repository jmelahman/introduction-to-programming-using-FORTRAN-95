program vols
!Calculates difference in volume of 2 spheres
    implicit none
    real :: rad1,rad2,vol1,vol2
    character :: response

20  print *, 'Enter the two radii'
    read *, rad1,rad2
    call volume(rad1,vol1)
!passes the values of rad1 and vol1 to subroutine
    call volume(rad2,vol2)
    write(*,10) 'The difference in volumes is, ',abs(vol1-vol2)
!Formats character and float strings
10  format(a,2f10.3)

    print *, 'Any more? - hit Y for yes, otherwise hit any key'
    read *, response
    if (response /= 'Y' .and. response /= 'y') stop
    goto 20
end program vols

!________________________________________________

subroutine volume(rad,vol)
    implicit none
!arguments passed must have similar types as in main
    real :: rad         !Input
    real :: vol         !Output
    real ,parameter :: pi=4.0*atan(1.0)
!calculates the volume of a sphere
    vol=4.0/3.0*pi*rad*rad*rad
!It's a little quicker to do rad*rad*rad than rad**3
    return
end subroutine volume
