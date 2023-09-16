program centaur

    implicit none
    integer :: n

    interface
        ! we need to declare DUMMY variables before we can declare the subroutine
        ! NOTE: we cannot use a function, since Fortran functions must have a return value !
        recursive subroutine recursive_centaur(current_level, finish)
            integer, intent(in) :: current_level
            logical, intent(in) :: finish
        end subroutine recursive_centaur
    end interface

    ! Main program
    read(*, *) n
    call recursive_centaur(n, .TRUE.)

end program centaur

recursive subroutine recursive_centaur(current_level, finish)
    integer, intent(in) :: current_level
    logical, intent(in) :: finish
    integer :: i

    if (current_level < 0) return
    ! call upper body
    call recursive_centaur(current_level - 1, .FALSE.)
    ! is uppermost body
    if (current_level == 0) then
        print *, " o"
        print *, "/|\_____"
        write(*, fmt="(1x,a,i0)", advance="no") "|       #"
    else
        ! print adequate number of whitespaces for padding
        do i = 1, current_level - 1
            write(*, fmt="(1x,a,i0)", advance="no") "     "
        end do
        ! print the body of the recursive centaur at the current level
        write(*, fmt="(1x,a,i0)", advance="no") "! !``"
        write(*, fmt="(1x,a,i0)", advance="no") "|       #"
    end if
    if (finish .eqv. .FALSE.) then
        ! centaur's back
        print *, "____"
    else
        print *
        ! print adequate number of whitespaces for padding
        do i = 1, current_level
            write(*, fmt="(1x,a,i0)", advance="no") "     "
        end do
        ! print the legs of the lowest level of the recursive centaur's body
        print *, "! !```! !"
    end if
end subroutine recursive_centaur
