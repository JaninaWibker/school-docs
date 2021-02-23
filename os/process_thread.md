# Processes & Threads

A process is a program in execution / an instance of a program.

Process state:
- registers,
- address space,
- I/O state

Each process has a **Process Control Block** (**PCB**) associated with it.

The PCB contains:
- Address space
- Open files (file descriptors)
- Child processes
- Pending alarms


## Concurrency vs. Parallelism

Concurrency / Pseudoparallelism: Multiple processes on the same CPU
Parallelism: Processes truly running at the same time with mulitple CPUs


## Limited Direct Execution

CPU has certain protection features which guard against malicious / bad / buggy programs:
- Rings: kernel runs in Ring 0 (kernel mode), normal processes in Ring 3 (restricted mode)
- The higher the ring the more restricted the things the code can do (processes are purely a construct created by the operating system and don't exist on CPU level, therefore code and not process)

![x86 protection modes](../assets/os/protection_modes.svg)

The OS implements the construct of processes on it's own, this means it also possesses the power to create, halt and stop processes:

Halting and stopping is done through interrupts

The OS can create processes, transform control to their starting point, stop them (requires interrupts), ...
When doing a system call (trap instruction) you change privilege level for a short period of time and run kernel code.

Each user process has it's own virtual memory address space.
Kernel memory is protected from the user mode accesses.

## ELF - Executable Linkable Format

An ELF file is a executable file, at least on unix based systems.
The file contains multiple sections, each with a different purpose:

- .bss (Block Started by Symbol): not actually included in the file on disk but generated on execution.
  The size of this segment is encoded in the file however.
  It is meant to be used for zero-initialized variables once execution has begun.
- .data: Also used for data but unlike the .bss segment the variables aren't zero-initialized and therefore it must appear in the ELF file.
- .rodata: read only data ()
- .text : actual program code

There are potentially many more segments (based on what the linker does) but these are the most important ones.

When execution begins each of these is mapped into the virtual address space of the process.

![Memory layout](../assets/os/address_space.svg)


## Threads

One process consists of one or multiple threads.
For each thread a **Thread Control Block** (**TCB**) exists which houses the following data:
- Instruction Pointer (IP)
- Stack Pointer (SP; multiple stacks exist in the address space of the process; one for each thread)
- Program status word (PSW)
- Registers, ...
- State (either "new", "ready", "running", "waiting" or "terminated")

Threads are sometimes called lightweight processes.

There is a distinction to be made between **kernel level threads** (KLTs; one-to-one) and user level threads** (ULTs; many-to-one).
These are both called thread models.
Certain more complex models also sometimes exist where both is done at the same time; this is then called many-to-many or hybrid thread model.

Kernel level threads are threads managed by the kernel, meaning the kernel does all the scheduling and so on.

User level threads on the other hand might not even be known to the kernel at all and are handled completely in userland using pthreads for example.

Kernel level threads have the following advantages and disadvantages:

| Advantage                  | Disadvantage                                             |
| -------------------------- | -------------------------------------------------------- |
| Real parallelism possible  | OS manages every thread in the system (TCB, stacks, ...) |
| Threads block individually | Syscalls needed for thread management                    |
|                            | Scheduling fixed in OS                                   |

User level threads have the following advantages and disadvantages:

| Advantage                                             | Disadvantage                                          |
| ----------------------------------------------------- | ----------------------------------------------------- |
| Faster thread management operations (up to 100 times) | No parallel execution                                 |
| Flexible scheduling policy                            | Whole process blocks if only one user thread blocks   |
| Few system resources                                  | Need to re-implement parts of the OS (e.g. scheduler) |
| Can be used even if the OS does not support threads   |                                                       |


## OS Invocation

The kernel is **not** running in the background all the time waiting for things to happen; it is invoked using syscalls, interrupts or exceptions.

### Syscalls

There needs to be a way for programs to talk to the kernel and request things to be done that would normally only be allowed to more privileged code.
This is where system calls (or syscalls) come in:

A special instruction (TRAP instruction) is executed which then makes the CPU switch execution to some other piece of code (for handling this software-invoked interrupt).
This other piece of code is the kernel which then takes over for a while, tries to satisfy the request and then gives back control to the program (or schedules another one for execution).

Which exact "request" (or rather system call) is triggered is specified using a number which is later used as an index into the so-called system call table by the kernel.

The kernel code is executed at a higher privilege level than the normal user code so this code can do far more than could be done in usermode.

Before executing something critical in kernel mode the kernel first checks wether or not all conditions for this call are met:
- Process is allowed to make this call (sometimes partially implemented through pledges)
- Passed data is valid
- ...

There are many types of syscalls:
- Process control
- Memory management
- File management
- Device management
- Communication
- Information maintenance
- System management

The system call handler does the following:

- Saves the registers that it taints
- Reads the parameters that were passed by the caller
- **Sanitizes / checks the parameters for correctness**
- Checks if the process has permission to perform the requested action (pledges, ...)
- Performs the requested service on behalf of the process
- Returns to the caller with a success or error code

Detecting invalid data is crucial as kernel mode access could otherwise be gained through ROP-chains, ... which is bad.

## Interrupts

Interrupts are either software or hardware based.
Often only hardware-invoked interrupts are ment when talking about interrupts (especially when comparing interrupts with exceptions which are just software-invoked interrupts).

Hardware interrupts are interrupts which originate *from the outside* like I/O devices or timers triggering something.

When an interrupt happens, the CPU
- looks up the **interrupt vector**, a table that is pinned in memory and contains the addresses of all service routines (set up by the OS).
- transfers control to the respective **interrupt service routine** (ISR) in the OS that handles the interrupt.

The interrupt service routine must first save the state of the interrupted process:
- Instruction pointer (IP)
- Stack pointer (SP)
- Status word (PSW)

Interrupts can be masked, meaning that they get put in a queue of interrupts to handle later on.
When an interrupt is unmasked it is handled and removed from the queue.
This is useful because you absolutely don't want to interrupt another interrupt while it is currently being handled.

There are also non-maskable interrupts (NMI) which the system cannot ignore.
These usually indicate hardware errors.

## Exceptions

Exceptions are software-invoked interrupts which are fired by the processor itself if something *bad* happens.

*Bad* includes things like invalid memory accesses, division by zero and invalid opcodes.

The kernel is now tasked with handling this problem:
- if the kernel can resolve the problem the process resumes
- if not the kernel will kill the process.

A difference between (hardware-based) interrupts and exceptions is that:
- Interrupts can happen in any context
- Exceptions always occur synchronous to and in the context of a process or the kernel.
  So basically there is no further difference


