options nvidia NVreg_PreserveVideoMemoryAllocations=1
added to modprobe.d folder
added modconf hook to mkinitcpio.conf
regenerated using mkinitcpio -P


from : 
- https://wiki.archlinux.org/title/NVIDIA/Tips_and_tricks#Preserve_video_memory_after_suspend
- https://wiki.archlinux.org/title/Wayland
- https://github.com/korvahannu/arch-nvidia-drivers-installation-guide

added to /etc/default/grub (the modeset setting)
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet nvidia-drm.modeset=1"


