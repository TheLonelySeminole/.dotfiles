# How I added the nvidia driver and fixed waylnd when only x11 would load

I used [This Github page that I found](https://github.com/korvahannu/arch-nvidia-drivers-installation-guide) along with the arch NVIDIA page to install the driver, but Wayland would not work

I found [this link](https://wiki.archlinux.org/title/NVIDIA/Tips_and_tricks#Preserve_video_memory_after_suspend) and added:
"options nvidia NVreg_PreserveVideoMemoryAllocations=1" into a file named preserve.conf in the /etc/modprobe.d folder

I also added the "modconf"" hook to mkinitcpio.conf and regenerated using mkinitcpio -P

I used systemctl to 'enable' nvidia-suspend.service, nvidia-hibernate.service, and nvidia-resume.service 

I also added environmental variables:
  GBM_BACKEND=nvidia-drm
  __GLX_VENDOR_LIBRARY_NAME=nvidia


from : 
- https://wiki.archlinux.org/title/NVIDIA/Tips_and_tricks#Preserve_video_memory_after_suspend
- https://wiki.archlinux.org/title/Wayland
- https://github.com/korvahannu/arch-nvidia-drivers-installation-guide

##> [!NOTE]
>   "nvidia-drm.modeset=1" cannot be added to /etc/mkinitcpio.conf and needs to be added to /etc/default/grub 
    GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet nvidia-drm.modeset=1"


