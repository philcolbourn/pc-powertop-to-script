# powertop-to-script
Run powertop and make a script of recommendations

Requires powertop, xmllint, and sed.

Must be run with sudo.

eg. 
$ sudo ./pc-powertop-to-bash.bash
[sudo] password for phil: 
Loaded 71 prior measurements
Cannot load from file /var/cache/powertop/saved_parameters.powertop
RAPL device for cpu 0
RAPL device for cpu 0
RAPL device for cpu 0
Cannot load from file /var/cache/powertop/saved_parameters.powertop
Preparing to take measurements
  unknown op '{'
Taking 1 measurement(s) for a duration of 20 second(s) each.
PowerTOP outputing using base filename /tmp/powertop.html
command failed: Operation not supported (-95)

$ cat /tmp/pc-rc.local
iw dev wlan0 set power_save on
echo 'min_power' > '/sys/class/scsi_host/host2/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host3/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host1/link_power_management_policy';
echo 'auto' > '/sys/bus/usb/devices/1-6/power/control';
echo 'auto' > '/sys/bus/usb/devices/1-5/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:16.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:14.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:04.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:02.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.3/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.6/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.3/power/control';

In this case, wireless module does not acept powertop recommendation.
