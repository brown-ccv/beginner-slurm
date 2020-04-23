# Slurm for Beginneers

---

##  

This workshop is designed to be run on Oscar, Brown's computing cluster

---

## Ocsar

---

## Key points to remmeber

- login vs. compute node

---

## What is difficult about working with slurm?

- You have to decide what resources your program will need before your program starts
- You have to know a little about your program and a little about the machine you are running on

---
## SLURM 

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

## A Job

@box[text-orange span-80 fragment](The resources you are using and the code you are running.)

That together is a 'job'

---

## My first batch script

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

## What goes into a batch script

A batch script is list of instructions for slurm.  















