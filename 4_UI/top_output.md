top - 14:25:13 up 38 min,  0 users,  load average: 245.81, 243.28, 192.66
Tasks: 111 total,   2 running, 109 sleeping,   0 stopped,   0 zombie
%Cpu(s): 19.3 us, 76.7 sy,  0.0 ni,  0.0 id,  1.3 wa,  0.0 hi,  2.7 si,  0.0 st
MiB Mem :  15981.0 total,    317.2 free,   7515.7 used,   8148.1 buff/cache
MiB Swap:      0.0 total,      0.0 free,      0.0 used.   7925.3 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                       
   9010 65532     20   0  768836  14428    256 S  12.3   0.1   1:35.61 coredns                       
   7351 root      20   0 1276052  14476    128 S   6.5   0.1   1:42.77 cri-dockerd                   
    789 codespa+  20   0   32.6g 985480  56448 S   2.3   6.0   1:08.28 node                          
   8239 root      20   0 1519716 214792  28800 S   2.3   1.3   0:48.94 kube-apiserver                
   8408 root      20   0 2265924  41392   1408 S   2.3   0.3   0:36.12 kubelet                       
   5601 root      20   0 1236712  13808   8704 S   1.6   0.1   0:35.55 containerd-shim               
   7077 root      20   0 3003836  59912   2048 S   1.3   0.4   1:00.84 dockerd                       
  17678 1001      20   0 3326320 283620    308 S   1.0   1.7   0:42.68 java                          
  17706 1001      20   0 3326320 285052    260 S   1.0   1.7   0:41.54 java                          
    767 codespa+  20   0   11.3g 109692  47744 S   0.6   0.7   0:30.51 node                          
   2245 codespa+  20   0  261.8g 415416 156848 S   0.6   2.5   0:16.77 Microsoft.CodeA      

   It looks like your system is under heavy load. Here are some key points from the `top` command output:

- **Uptime**: 38 minutes
- **Load Average**: Extremely high at 245.81, 243.28, 192.66
- **Tasks**: 111 total, with 2 running and 109 sleeping
- **CPU Usage**: 
  - User: 19.3%
  - System: 76.7%
  - Idle: 0.0%
- **Memory Usage**: 
  - Total: 15981 MiB
  - Free: 317.2 MiB
  - Used: 7515.7 MiB
  - Buffers/Cache: 8148.1 MiB
- **Swap**: Not in use (0.0 MiB)

**Top Processes by CPU Usage**:
- `coredns` (PID 9010): 12.3%
- `cri-dockerd` (PID 7351): 6.5%
- `node` (PID 789): 2.3%
- `kube-apiserver` (PID 8239): 2.3%
- `kubelet` (PID 8408): 2.3%

Your system's high load average and CPU usage suggest it might be struggling with the current workload. You might want to investigate the processes consuming the most resources and consider optimizing or redistributing the load. If you need more detailed analysis or specific recommendations, feel free to ask!

