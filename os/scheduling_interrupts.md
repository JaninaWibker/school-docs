# Scheduling & Interrupts

In general a process / thread can be in one of the following states: *new*, *ready*, *running*, *waiting* or *terminated*.

The following shows how a process might transition between them:

![states](../assets/os/process_state.svg)


## Categories of scheduling policies

Each category is meant for a different type of system. Real-time systems compared to smartphones or laptops need drastically different scheduling policies.

- **Batch Scheduling**
  - Useful when scheduling a whole lot of tasks that need to be completed but aren't necessarily time sensitive (run something every 24h; differences of a few seconds aren't that important)
  - Most oftenly used in business or HPC environments
  - Non-preemptive algorithms acceptable -> less switches -> less overhead
- **Interactive Scheduling**
  - Optimize for response time
  - Preemption essential to keep processes from hogging CPU
  - The system might feel really responsive but somewhat struggle with "really heavy" tasks (rendering, ...) if taken to the extremes (phones)
  - Most often used in phones, laptops, pcs; basically everyday devices everyone uses
- **Real-Time Scheduling**
  - Guarantee completion of jobs within time constraints
  - Need to be able to plan when which process runs and how long
  - Preemption is not always needed and is part of WCET (worst-case execution time) calculation


## Goals

**All systems**
- **Fairness**: give each process a fair share of CPU
- **Resource utilization**: keep expensive devices busy
- **OS overhead**: reducce number of context switches, ...

**Batch scheduling**
- **Throughput**: # of processes that complete per time unit
- **Turnaround time**: time from submission to completion of a job
- **CPU utilization**: keep the CPU as busy as possible

**Interactive Scheduling**
- **Waiting time**: time each process waits in *ready queue*
- **Response time**: tiem from request to first response
  - For a job: e.g. key press to echo
  - For a scheduler: submission of a job to the first time it is dispatched

**Real-Time Scheduling**
- **Meeting Deadlines**: finish jobs in time
- **Predicability**: minimize jitter


## General Scheduling policies

General scheduling policies which might be used for batch processing as well as other systems.

### FCFS - First-come First-serve

Executed after order of arrival, no consideration for *burst time*, *IO/CPU bound*, ...

Turn around time is accumulated until the execution has finished for a specific process beginning from time the jbo was scheduled.

### SJF - Shortest-Job-First

Execute the shortest job first.
Problem is that the length / burst time of the job is not usually known.
Some statistical models can however be used to predict this somewhat accurately.

### PSJF - Preemptive Shortest-Job-First

## Scheduling Policies for Interactive Systems

### RR - Round Robin

### VRR - Virtual Round Robin

### Priority Scheduling

### MLFB - Multi-Level Feedback Queue

### Lottery Scheduling

### Linux Scheduler

