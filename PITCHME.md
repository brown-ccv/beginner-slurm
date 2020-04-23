# Slurm for Beginners

---

##  

This workshop is designed to be run on Oscar, Brown's computing cluster.  

The exercises can be found at 

https://github.com/brown-ccv/beginner-slurm

The workshop presentation slides can be viewed at

https://gitpitch.com/brown-ccv/beginner-slurm

---

## Ocsar

Oscar is Brown's supercomputer

* 14 000 cores
* Linux
* Used by the Brown comunity 

---

### Key points to remember

- login vs. compute node

login nodes are for editing files, compiling, moving files, changing permissions
For any computationally intensive work, use a compute node

don't run Matlab on a login node

---

### What is difficult about working with slurm?

- You have to decide what resources your program will need before your program starts
- You have to know a little about your program and a little about the machine you are running on

---
### SLURM 

Simple Utility for Resource Management

Queue : all running and pending jobs

To see every job in the queue

```
  squeue
```

To see your jobs in the queue

```
   myq
```
 
To see all jobs in your condo

```
  condo epscor-condo
```

---

### A Job

The resources you are using and the code you are running.

That together is a 'job'

---

### My first batch script

```
  sbatch myscript.sh
```

Q. What message is printed to the screen?
Q. What files are produced?

## Job ID

Every job has a unique ID.  You can *not* cancel someone else's job so don't worry about that.

```
  cd ../jobid
```
submit these two jobs

```
  sbatch one_core_sleepy.sh
  sbatch two_core_sleepy.sh
```

View your jobs in the queue using `myq`.  
Q. Are they running or pending?

To see more detail about a job use

```
  scontrol show job
```

Cancel the job that is using two cores.

---

### What goes into a batch script

A batch script is list of instructions for slurm.  

The format is

```
#!/bin/bash
# Here is a comment
#SBATCH --time=1:00:00

#SBATCH -c 1
#SBATCH -J Myjob

#SBATCH -o Myjob-%j.out
#SBATCH -e Myjob-%j.err

module load workshop
hello

```

### What resources should I ask for?

In general, the better your estimate of your resource requirements the less time you will spend in the queue. But, you always want to overestimate your needs.

- cores
- time
- memory

For cores:

Q.  is your code parallel?  <br>

 - If your code can run on multiple cores
 - If you code can run across multiple nodes
    
Q. Is your code serial? <br>
 
 - This means it can only make use of one core
    
For time:

Make an estimate and add a bit. <br> 
e.g. if think your code will take an hour, give it 3 hours <br>
if you think your code will take a day, give it 2-3 days
 
For memory, this is some trial an error.  You can ask for a lot, then message your usage.  If you have asked for 100GB of memory, but only used 1GB, you can reduce your memory for your next job. 

---

### What about if I need to interact with my program?

You can use an *interactive* job

```
interact
```

will start an interactive session

You can use a VNC session.  This gives you a desktop on a compute node. You will need to install the CCV VNC clinet on your machine to use the VNC:

https://docs.ccv.brown.edu/oscar/connecting-to-oscar/vnc

You can use Jupyter notebooks

1. start a batch job which starts the Jupyter server
2. connect to this server once your job starts

For detailed instructions on this see 
https://docs.ccv.brown.edu/oscar/jupyter-notebooks/jupyter-notebooks-on-oscar-1

