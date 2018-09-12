module methods
  implicit none

  public :: Upwind,LaxP,LaxC
contains


  real function Upwind(prev,current,xStep,tStep,V)
    real, intent(in):: prev,current,xStep,tStep,V

    Upwind = current - V * (tStep/xStep) * (current - prev)

  end function Upwind


  real function LaxP(current,next)
    real, intent(in) :: current,next

    LaxP = 0.5 * (current + next) - C/2 * (next -  current)

  end function LaxP()


  real function LaxC(current,next,currentMod,nextMod)
    real, intent(in) :: current,next,currentMod,nextMod

    LaxC = current - C * (LaxP(current,next) - LaxP (currentMod,nextMod))
    
  end function LaxC()




end module
