module methods
  implicit none

  public :: godunov
contains



  real function godunov(current,fl,fr,xStep,tStep,V)
    real, intent(in):: prev,current,xStep,tStep,V

    godunov = current -  (tStep/xStep) * (fr - fl)

  end function godunov



end module
