# Instructions
##### This README intends to give full information about how to use the package. Please follow the instructions to ensure package installation correctly. 
----
## About ssh_MATLAB


> The package provided here attempts to create a link between the localhost and a remote machine like Raspberry Pi or Intel Edison etc. 

> Once the setup is done, you can give the following command in the MATLAB terminal:-

    sshfrommatlab(user_name, host_name, password)

----
## Usage/Setup

>Clone/Download the repository into your local   machine with MATLAB installed, preferably R2013b (v7.9) or greater 

>Open MATLAB and change your directory to the place where you cloned this repo.

> Open **sshfrommatlabinstall.m** and run it. It should run without any errors and give a clean install of the Java Secure Shell library.

>Now set *user_name*, *host_name* and *password* as per your requirements. In my case it was:-
>
>user_name = 'pi'
>
>host_name = '192.1681.120'
>
>password = 'q'

#### Now run the following command as metioned earlier:-
    `sshfrommatlab(user_name, host_name, password)`
#### If everything works fine, you should see a valid JavaConnection Object as your answer.

#### Use:-

    sshfrommatlabissue(channel, command)
#### to issue commands (*as strings*) to the remote host via the secure shell.

#### In order to initiate file transfer between MATLAB and the remote host, you should give the following commands:
>For sending files to the remote host from MATLAB issue:-

    sftpfrommatlab(user_name, host_name, password, local_file_name, remote_file_name)

> local___file___name is the COMPLETE address to the file in your system that you want to send to the remote host.
 
>Example ('C:\Program Files\MATLAB\R2016a\bin\text.txt') for Windows or ('/home/yourUSERname/python.txt') for Linux

> remote___file___name is the COMPLETE address to the file in your remote host where you want it to be stored.

>Example ('/home/pi/python.txt') for R-Pi

----
>For sending files from the remote host to MATLAB issue:-

    scptomatlab(user_name, host_name, password, local_file_name, remote_file_name)

> local___file___name is the COMPLETE address to the file in your system where you want to store the incoming file from the remote host.
 
>Example ('C:\Program Files\MATLAB\R2016a\bin\text.txt') for Windows or ('/home/yourUSERname/python.txt') for Linux

> remote___file___name is the COMPLETE address to the file in your remote host which you want to be copied to the local host.

>Example ('/home/pi/python.txt') for R-Pi

----
## Thanks
If you have any queries please feel free to contact me at kumar324@gmail.com
