module methods
  implicit none

  public :: Upwind
contains


  real function Upwind(prev,current,xStep,tStep,V)
    real, intent(in):: prev,current,xStep,tStep,V

    Upwind = current - V * (tStep/xStep) * (current - prev)

  end function Upwind



end module
