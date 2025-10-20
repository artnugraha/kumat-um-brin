#! /bin/bash
# Band structure of Graphene
############################

mpirun -np 4 pw.x < gr.scf.in > gr.scf.out
mpirun -np 4 pw.x < gr.nscf.in > gr.nscf.out
mpirun -np 4 bands.x < gr.bands.in > gr.bands.out
