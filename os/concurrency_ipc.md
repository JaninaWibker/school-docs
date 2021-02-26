# Concurrency & IPC

## Concurrency

## IPC - Interprocess Communication

Processes (/threads) often need to interchange information.

This can fundamentally be done using either **message passing** or **shared memory**.

Message passing will likely use shared memory under the hood but this is not necessarily exposed to the user.
Sometimes message passing is also implemented through some other means by the kernel, when using shared memory it is essentially all done in userspace with maybe a few exceptions.

In general message passing is easier and nicer to use as you don't have to implement many things yourself.

The main reasons for using IPC are:
- **Information sharing**
- **Computational speed-up**
- **Modularity**

### Message passing

Syscalls are used to explicitely send and receive messages.
This is usually done through pipes, sockets or POSIX message queues.

With **direct messages** a receiving process/thread has to be explicitely named (`send(P, message)` send message to P, `receive(Q, &message)` receive message from Q)

**Indirect messages** on the other hand can be sent to so-called **mailboxes**.
Mailboxes act as a proxy for messages, they will be sent to the mailbox but who handles the message is up to the mailbox and/or the processes in the mailbox.
Every mailbox has a unique id using which it can be addressed.
Using mailboxes you can easily implement event based systems where you can join or leave certain mailboxes to receive events (e.g. window server events).

With message passing you can either have **blocking** (**synchronous**) or **non-blocking** (**asynchronous**) communication.

This is further subdivided in send and receive as either of these can be either blocking or non-blocking creating a total of 4 combinations possible.

With **blocking send** the sender will block until the message has been copied / handled by the receiver.<br />
With **blocking receive** the receiver blocks until a message is available.<br />
With **non-blocking send** the sender can continue executing code directly after sending of the message.<br />
With **non-blocking receive** the receiver can quickly check if a new message is available and if not just move on instead of waiting.

With asynchronous sending you have to have some kind of message queue which handles new incoming messages.

Using message buffering you can implement blocking and non-blocking communication at the same time controlled by the capacity.

Zero capacity - 0 messages / no queuing
- sender must wait for receiver (**rendezvous**)
- message is transferred as soon as receiver becomes available
  - no latency/jitter

Bounded capacity - finite number and length of messages
- Sender can send before receiver waits for message
- Sender can send while receiver still processes previous message
  - Variable latency between send and receive
- Sender must wait if link (/queue) full

Unbounded capacity
- Sender never waits
- Memory may overflow

An additional feature some mailbox implementations offer is attaching a priority to messages.

### Shared memory

Instead of having a clear protocol / interface for sending and receiving messages with shared memory you can do everything yourself.

Processes set up shared memory between them using syscalls and can then use synchronization principles to handle the memory accesses to this shared region in a safe way.

Using this sharing of information between processes can be done but the actual implementation is up to the processes.

`shm_open`, `ftruncate`, `mmap`, `munmap` and `shm_unlink` are some examples of POSIX syscalls for managing/setting up shared memory.

