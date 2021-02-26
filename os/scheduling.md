# Scheduling

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

SJF optimizes for waiting time and response time but doesn't optimize for throughput (poor I/O device utilization).

Preempt periodically to make a new scheduling decision:
- At each time slice schedule job with shortest remaining time
- Alternative: Schedule job whose next CPU burst is the shortest

## Scheduling Policies for Interactive Systems

### RR - Round Robin

Have some fixed **time slice** / **time quantum** length (10-100ms).
Preempt threads that have not blocked by the end of the time slice.
Append thread to end of run queue, run next thread.

A time slice that is too short results in a lot of overhead while a timeslice that is too long results in less interactivity.

Typically higher (worse) average turnaround time than SJF but better response time.


### VRR - Virtual Round Robin

Improvement over RR as RR is unfair for I/O bound jobs:
- I/O bound jobs blcok before they use up their time slice.
- CPU-bound jobs use up their entire slice
- with same number of slices CPU bound jobs get more CPU time.

Treat jobs that don't use up their slice better:
Put them in an additional queue and store whats left of their time slice.
Give this special queue a higher priority over other jobs.
Every time a job in this queue uses up it's slice it gets put back into the normal queue.


### Priority Scheduling

Have multiple queues with priorities attached to them.

Use SJF inside of each queue to schedule the next job to run.

This can result in starvation where only high priority processes are run and the lower ones never get a turn.
A possible solution is aging: the priority of a process gradually increases the longer it hasn't been executed.


### MLFB - Multi-Level Feedback Queue

**Goals**:
- Give higher priority to I/O-bound jobs (won't use up their slice but deserve a fair share of the CPU)
- Give low priority to CPU-bound jobs, but run them for longer at a time

Use different queues with different priorities and time slice lengths:
- Schedule queues with (static) priority scheduling
- Double time slice length in each next-lower priority
- Promote processes into a higher priority queue if they don't use up their time slice repeatedly
- Demote processes that repeatedly use up their time slice

Each queue could have different scheduling mechanisms used for it, for example RR or FCFS.

This approach can suffer when a high priority priority process depends on a low priority process.
The higher priority process needs to wait for the lower priority process to finish something effectively lowering the priority of the higher priority process beneath the priority of the lower priority process.

A possible solution is **priority donation** / **priority inheritance**:
- give the lower priority process temporarily a higher priority while a higher priority process is waiting for it to finish
- If a transitive chain of dependencies exist choose the highest priority out of all involved parties to donate to the process

### Lottery Scheduling

Issue number of lottery tickets to processes.
Processes with a higher priority get more tickets.
Draw a ticket randomly and schedule the process which owns the ticket next.

