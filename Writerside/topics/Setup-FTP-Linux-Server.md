# Setup FTP Linux Server

## Prerequisites
- Linux server instance with a non-root user
- Client (Filezilla, for example)


## Install vsftpd package (FTP daemon)
<tabs>
    <tab title="Debian-based Linux Distros">
        <code-block lang="bash">apt install -y vsftpd</code-block>
    </tab>
    <tab title="RPM-based Linux Distros">
        <code-block lang="bash">dnf install -y vsftpd</code-block> 
    </tab>
</tabs>

## Check the vsftpd service
```bash
systemctl status vsftpd
```

## Start the vsftpd service (if not started)
Start the vsftpd service if not alredy started
```bash
systemctl start vsftpd
```

## Enable the vsftpd service (if needed)
```bash
systemctl enable vsftpd
```

## Update config if needed
<tabs>
    <tab title="Debian-based Linux Distros">
        To see/edit vsftpd config, you can cat/vim the file: `/etc/vsftpd.conf`.
    </tab>
    <tab title="RPM-based Linux Distros">
        To see/edit vsftpd config, you can cat/vim the file: `/etc/vsftpd/vsftpd.conf`.
    </tab>
</tabs>

For example, to enable any form of FTP (which is disabled by default for Debian-based Linux Distros), uncomment the line: `#write_enable=YES`

PS: after editing the vsftpd config file, you should restart the service so that your changes are taken into account.
```bash
systemctl restart vsftpd
```

## Connect to the server using FTP
That's it! You can test it with your ftp client RIGHT NOW!

<tabs>
    <tab title="Using Filezilla">
        <img src="ftp_filezilla.png" alt="ftp_filezilla" width="706" border-effect="line"/>
    </tab>
    <tab title="Using Unix Terminal">
        <procedure title="Become a professional">
            <step>
                Make sure you have ftp client installed.
                <code-block lang="bash">command -v ftp</code-block>
            </step>
            <step>
                If not the case, install it
                <tabs>
                    <tab title="Debian-based Linux Distros">
                        <code-block lang="bash">apt install -y ftp</code-block>
                    </tab>
                    <tab title="RPM-based Linux Distros">
                        <code-block lang="bash">dnf install -y ftp</code-block> 
                    </tab>
                </tabs>
            </step>
            <step>
                Connect to the server, say, for example, you ip address is 192.168.1.111.
                <code-block lang="bash">ftp 192.168.1.111</code-block>
            </step>
            <step>
                To download a file (foo.txt, for example) use the command:
                <code-block lang="bash">>ftp get foo.txt</code-block>
                To upload a file (foo.txt, for example) use the command:
                <code-block lang="bash">>ftp put foo.txt</code-block>
            </step>
        </procedure>
    </tab>
</tabs>

