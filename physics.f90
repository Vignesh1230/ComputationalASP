module physics
  implicit none

contains

  subroutine cons2prim(conserved,)
    real,dimension(:), intent(in)      :: conserved
    real,dimension(:), intent(out)     :: prim

  end subroutine cons2prim


  subroutine prim2cons()
    real,dimension(:), intent(out)      :: conserved
    real,dimension(:), intent(in)       :: prim

  end subroutine prim2cons


  subroutine get_f(nu,u,f,lambda)
    integer, intent(in)                 :: n
    real, intent(in)                    :: u
    real, intent(inout)                 :: lambda,f

    f = 0.5 * u**2


  end subroutine get_f

end module physics
