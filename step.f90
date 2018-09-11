module grid
  implicit none
  public :: step_functionUpWind
contains



  subroutine step_functionUpWind(u_array,dx,dt,V)
    real, intent(inout) :: u_array
    real, intent(in) :: dx,dt,V

    !Do First Index of array, using Periodic boundaries
    !Left value of first index is the last index of array
    u_array(1) = Upwind(SIZE(u_array), u_array(1),dx,dt,V)

    do j = 2, SIZE(u_array) , 1
      u_array(j) = Upwind(u_array(j-1),u_array(j),dx,dt,V)
    end do


  end subroutine step_functionUpWind


end module grid
