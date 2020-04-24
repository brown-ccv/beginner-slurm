# A Beginner's guide to using Slurm on Oscar

This workshop is designed to be run on Oscar, Brown's computing cluster.  The workshop is aimed at people getting started with Slurm on Oscar.  We assume you have some knowledge of the linux command line. 

The workshop presentation slides can be viewed at

[google slide deck](https://docs.google.com/presentation/d/1Gi9D5m6OmfHVBRhtlXIbJ7f2s5hXiRj1FrFAj_QP5OA/edit?usp=sharing)

The exercises can be found at 

[github.com/brown-ccv/beginner-slurm](https://github.com/brown-ccv/beginner-slurm)

You can attend this workshop in person, for upcoming CCV events see:

[events.brown.edu/ccv](https://events.brown.edu/ccv/view/month)

You are also welcome follow the slides and do the exercises on your own.

## Important concept: Login nodes vs. compute nodes

Login nodes are for editing files, compiling, moving files, changing permission, submitting jobs. Compute nodes are where you should do your intensive computing.  To on the compute nodes you are going to use Slurm. 

# Exercises

To copy the excersises:

1. Login into Oscar
2. Clone this repostiory into your home directory
3. cd into the `beginner-slurm` directory

````
git clone https://gitpitch.com/brown-ccv/beginner-slurm
cd beginner-slurm
````


## Example Slurm batch scripts for future reference

Example batch scripts can be found in your home directory on Oscar. To list all the example scripts do:

````
ls ~/batch_scripts
````

You can use these scripts as a reference.  You can copy these scripts and edit to fit your needs, for example to copy the `serial.sh`

````
cp ~/batch_scripts/serial.sh .

````



