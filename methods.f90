module methods
  implicit none

  public :: Upwind,LaxP,LaxC
contains



  real function Upwind(prev,current,xStep,tStep,V)
    real, intent(in):: prev,current,xStep,tStep,V

    Upwind = current - V * (tStep/xStep) * (current - prev)

  end function Upwind


  real function LaxP(current,next,C)
    real, intent(in) :: current,next,C

    LaxP = 0.5 * (current + next) - C/2 * (next -  current)

  end function LaxP


  real function LaxC(prev,current,next,C)
    real, intent(in) :: prev,current,next,C

    LaxC = current - C * (LaxP(current,next,C) - LaxP (prev,current,C))

  end function LaxC




end module
