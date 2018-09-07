module init
  implicit none
contains

  subroutine set_initial(xGrid,uGrid,size)
    real, intent(in):: xGrid,size
    real, intent(out):: xGrid
    do i = 1,size,1
      if(i > 0.25 * size .AND. 1 <= 0.75 * size)THEN
        xGrid(i) = 1.
      else
        xGrid(i) = 0.
      end if
    end do
  end subroutine


end module init
