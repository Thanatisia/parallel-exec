# Parallel Remote Execution utility using ssh

## Information
### Background
```
A multi-device, parallel remote execution utility powered by SSH (ongoing WIP to add other remote connection platforms), 
designed to make the process of setting up multiple servers/devices at the same time easier

In a sense, similar to Ansible but using only SSH
```

## Setup
### Pre-Requisites
+ SSH
+ parallel

## Documentations
### Synopsis/Syntax
```console
ssh-exec {options} [exec] ...
```

### Parameters
- Positionals
    + exec : Begin remote execution
- Optionals
    + -a | --append : Append a new command to execute
    + --domain : Specify hostname/domain/IP address
    + --parallel-opts : Specify options to parse into Multithreading/parallelism utility 'parallel'
    + --reset-parallel-opts : Reset all options provided into the parallel options array
    + --username : Specify username to execute in

### Usage
- Sending to multiple remote hosts
    ```console
    ssh-exec --username asura --domain 192.168.1.1 -a 'echo Hello World' -a 'echo Hello World 2' exec \     # First system
             --username asura --domain 192.168.1.2 -a 'echo Hello World' -a 'echo Hello World 2' exec ...   # Second system
    ```

## Wiki

### Snippets

### Resources

### References

## Remarks
