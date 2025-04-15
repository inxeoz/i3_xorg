how to enable NetworkConfigurationEnabled: manually in linux ? for iwctl
ChatGPT said:

To enable NetworkConfigurationEnabled manually for iwctl (part of iNet wireless daemon (iwd)) on a Linux system, follow these steps:
✅ Step-by-step: Enable NetworkConfigurationEnabled

This enables IWD to handle network configuration (like setting IP addresses) without relying on external tools like dhclient or NetworkManager.
1. Edit the main config file

The config file is usually located at:

/etc/iwd/main.conf

If it doesn’t exist, you can create it.
2. Add or modify the following

Open it in a text editor (with sudo):

sudo nano /etc/iwd/main.conf

Add or make sure it includes:

[General]
EnableNetworkConfiguration=true

[Network]
NameResolvingService=systemd

    EnableNetworkConfiguration=true allows IWD to configure IP addresses, DNS, etc.

    NameResolvingService=systemd tells IWD to use systemd-resolved for DNS (you can also use resolvconf or none).

3. Restart iwd

After saving the file, restart the IWD service:

sudo systemctl restart iwd

4. Verify it’s working

You can check that IWD has taken over IP configuration with:

iwctl

Inside the iwctl prompt:

station device_name connect your_network

And then verify with:

ip a

You should see that your interface has an IP address assigned automatically.
