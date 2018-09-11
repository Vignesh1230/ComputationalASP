FC=gfortran
FFLAGS= -Wall -fcheck=all # turn on warnings and checks
SRC= methods.f90 grid.f90 init.f90 main.f90
OBJ=${SRC:.f90=.o}
%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<
main: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)
clean:
	rm *.o *.mod
