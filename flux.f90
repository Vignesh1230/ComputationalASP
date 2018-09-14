module flux
  implicit none

  public :: get_flux

contains


  subroutine get_flux_Godunov(ul,ur)
    use physics, only:get_f
    integer, intent(in)   :: nu
    real, intent(in)      :: ul(nu),ur(nu)
    real, intent(out)     :: f(nu)
    real                  :: fl(nu),fr(nu)
    real                  :: lambdal,lambdar,vsh

    call get_f(nu,ul,fl,lambdal)
    call get_f(nu,ur,fr,lambdar)


    if(ul(1) > ur(1)) THEN
      vsh = 0.5 * (ul(1) + ur(1))
      if(vsh > 0.) THEN
        f = fl
      else
        f = fr
      endif
    else
      if(ul(1) > 0.) THEN
        f = fl
      elseif(ul(1)<0.) then
        f = fr
      else
        f = 0.
    endif



  end subroutine get_flux_Godunov



end module flux
