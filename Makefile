FC=gfortran
FFLAGS= -Wall -fcheck=all # turn on warnings and checks
SRC= grid.f90 init.f90 main.f90
OBJ=${SRC:.f90=.o}
%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<
myprog: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)
clean:
	rm *.o *.mod
