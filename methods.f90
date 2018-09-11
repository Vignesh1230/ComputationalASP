module methods
  implicit none

  public :: Upwind,LaxP,LaxC
contains


  real function Upwind(prev,current,xStep,tStep,V)
    real, intent(in):: prev,current,xStep,tStep,V

    Upwind = current - V * (tStep/xStep) * (current - prev)

  end function Upwind


  real function LaxP()


  end function LaxP()


  real function LaxC()

  end function LaxC()




end module
