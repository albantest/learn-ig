Learn about the kubectl debug node command:

`kubectl debug --help`{{exec}}

Find out the name of the worker nodes:

`kubectl get node`{{exec}}

List the gadgets:

`kubectl debug node/controlplane -ti --image=ghcr.io/inspektor-gadget/ig -- ig help`{{exec}}

Run some commands:

`kubectl debug node/controlplane -ti --image=ghcr.io/inspektor-gadget/ig -- ig --auto-sd-unit-restart list-containers`{{exec}}

`kubectl debug node/controlplane -ti --image=ghcr.io/inspektor-gadget/ig -- ig --auto-sd-unit-restart trace exec`{{exec}}

`kubectl debug node/controlplane -ti --image=ghcr.io/inspektor-gadget/ig -- ig --auto-sd-unit-restart top ebpf`{{exec}}
