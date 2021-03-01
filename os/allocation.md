# Memory and Page Allocation

## Primitive approaches

With **swapping** and **static relocation** you can have multiple processes running concurrently without memory abstraction.

**Swapping** means that a whole programs state is saved to disk (called **roll-out**) and another programs state is loaded back from disk (called **roll-in**).

This is obviously really really bad for performance as you have to copy a whole lot of data each time you switch which process is currently being executed.
The time it takes to switch to a different process is directly proportional to the amount of memory that needs to be swapped out.
This also doesn't allow for any kind of true parallelism.
The only advantage this has is that it doesn't require any hardware memory management features.

**Static relocation** is a process in which the OS manually adds some kind of offset to every memory access that is being made by a program.
This is done through manipulating the loaded code of the program at start up.

This is a bit better than just swapping out everything all the time but has the disadvantages that:
- you don't have any kind of memory protection
- you cannot grow or shrink the memory space being allocated to each process at runtime
- you cannot evict some unused memory of some process to make room for another processes needs
- you might not be able to find a contiguous region of memory large enough for the needs of a specific process

Desired properties when sharing physical memory:
- **Protection**
  - One process shouldn't be able to take down the whole system with a bug / malicous intent
  - Disallow processes to access each others memory without permission (shared memory)
- **Transparency**
  - A process shouldn't require particular physical memory addresses
  - Processes should be able to use large amounts of contiguous memory
- **Resource exhaustion**
  - Allow the sum of all processes accumulated memory to be larger than the physical memory

### Base and limit registers

> This is something really basic MMUs support.

This only implements *protection*, but not *transparency* or *resource exhaustion* (or translation of virtual to physical addresses).

Have a set of base, limit pairs (one per process) which contain a base address and a limit after which the segment ends.

Go through the list of pairs and for each check the following:

```
address >= base
  ? address < base + limit
    ? found base, limit pair
    : go to the next pair
  : go to the next pair
```

If no pair could be found then the access was an illegal access and the OS should be notified of this.

The pros of this are that it is really fast to do these checks.
The cons are that you cannot grow the address space of a process and that you cannot share memory between processes.

This is where segmentation comes in

### Segmentation

This requires an MMU which can do *some* virtual address translation.

Virtual addresses are comprised of a segment number and an offset.
The segment number might only take up a few bits while the offset is the majority of the address.

Have the same mechanism as before but now use the segment number to identify which pair each address is refering to and only do one check.
The physical address is then the base + offset.

Additionally some kind of protection bits might exist for each entry.

Each process has it's own **segment table** that houses these base, limit, protection tuples.

Which segment table the MMU should use is set using registers (**segment-table base register** / **STBR** and **segment-table length register** / **STLR**)

Pros:
- Dynamic relation is possible (changing base in segment-table)
- Makes data/code sharing between processes possible by having segment-table entries with the same base, limit values
- A process doesn't need one contiguous region of physical memory, it can (at least somewhat) be stitched together using multiple segments
- The entire memory of a process doesn't have to be in memory all the time. You could just seg fault and use this as an indicator to swap things back into memory

Cons:
- Segments still need to be contiguous
- Fragmentation of physical memory

## Paging

### Dynamic memory allocation

**Dynamic memory allocation** allows:
- having complex data structures that can dynamically grow in size
- not having to statically allocate everything
- implementing the heap

Implementing dynamic allocation is however not easy and has a huge impact on performance in the user space as well as in the kernel.

It is impossible to construct a memory allocator that performs well in all scenarios; it's always a trade-off.

What does an allocator do?
- starts off with a pool of free memory
- gets arbitrary `allocate` (malloc) and `free` requests in a random uncontrollable order
- cannot move allocated regions around (no compaction possible)
  - this isn't possible as all the pointers of a program would point at invalid data
  - bad allocation decision is permanent
  - fragmentation can happen and will cause problems
- keep track of what is used/unused

A simple approach to keep track of which blocks of memory are used is to group things into blocks and assign a bit to each block in a bitmap.

If the bit is zero it is free; if the bit is one it is used.

The problem with this is that two adjacent allocations might not be recognizable as such as their is no gap between the 1s and it therefore looks like one giant allocation.

This can be solved using a more complex structure or requiring `free`-ing to specify the amount to free.

![allocation bitmap](../assets/os/allocation-bitmap.svg)
