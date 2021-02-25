# Device Management & Storage devices

## Device Management

The general objectives of device management are:

- **abstracting** away from details of physical devices into a more uniform api
- **uniform addressing/naming** that does not depend on hardware details
- **serialization** of I/O-operations by concurrent applications
- **protection** of standard devices against unauthorized accesses
- **buffering**, if data from/to a device cannot be stored in the final destination
- **error handling** of sporadic device errors
- **virtualizating** physical devices via memory and time multiplexing (e.g., pty, RAM disk)
  - **spooling**, **uniform api**, **request scheduling**

### Types of I/O devices

- **block devices**:
  - hard drives, ssds, ...
  - `read`, `write`, `seek`
  - raw I/O or filesystem access
  - memory-mapped file access possible
- **character devices**:
  - most often keyboards, mice, serial ports, ...
  - `get`, `put`
  - often heavily abstracted by libraries
- **network devices**:
  - specific communication patterns and addressing schemes require own interface
  - usually addressed with socket interface
  - seperates network protocol from network operation

### Memory-mapped I/O

I/O devices are directly mapped to some memory addresses which can be accesses using standard memory operations.


### Port-mapped I/O

Special instructions are used to send / receive data from ports.
These ports function similar to registers in some ways.


### Programmed I/O

While a certain I/O operation is being done the thread is busy-waiting for the response.
The kernel thread is polling the state of I/O devices: ready, busy, error


### Interrupt-driven I/O

Asynchronously started and later received using interrupt.
The interrupt handler will then process the response accordingly:
- disable other interrupts
- save registers not alrady saved by hardware interrupt mechanism
- switch address space if necessary
- set up stack for interrupt service procedure
- handle interrupt:
  - find out which thread needs to be activated or which kernel code to run
  - activate the required thread / run the required kernel code
- enable other interrupts

### DMA - Direct Memory Access

DMA module controls exchange of data between main memory and I/O device.
This bypasses the CPU entirely when transfering data from I/O devices to memory.
Processor interrupted after entire block has been transferred.


## Storage devices

TODO
