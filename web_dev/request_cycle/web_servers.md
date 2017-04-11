2. Some key design philosophies of the Linux operating system are:
    - Speed and efficiency are important goals with a current concentration on standardization as well
    - Each program does one thing well
    - Even when the same system calls are present on two different UNIX systems, they don't necessarily behave the same way
    - Make every program a filter
    - Components are:
        1. The Kernel: in charge of maintaining vital abstractions
        2. The system libraries: typical set of functions applications can interrelate to in the kernel
        3. The system utilities: programs that execute individual, particular, and specialize managing tasks

3. A VPS (virtual private server) is a virtual computer, maintained as a service for internet hosting. Some advantages of using VPS are 


4. It is not good practice to stay logged in as root on a Linux system because doing so causes less security protection, making the server more susceptible to being hacked. Also when creating a new login to work on a server that's already built, programs ran under your new username are restricted from writing to the rest of the system, which minimizes your chance of damaging the system.