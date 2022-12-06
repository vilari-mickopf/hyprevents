# hyprevents
Invoke shell functions in response to Hyprland socket2 events. Forked from [hyprwm](https://github.com/hyprwm/contrib). hyprevents reads Hyprland events from stdin as documented at [wiki](http://wiki.hyprland.org/IPC/#tmphyprhissocket2sock).

The event string is parsed, splitting the data into indivual arguments for each event recevied, a function with the name event_<eventname> is invoked when invoked, the data is passed as named arguments

A seperate program is required to connect to Hyprland socket2 and pass the
event strings to hyprevents stdin. see usage below for an example using socat.

# Usage:
```bash
cp hyprevents_default.sh custom_event_file.sh
```

In custom_event_file.sh, add implementations for the events you want to handle and run:
```bash
socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock \
         EXEC:"hyprevents custom_event_file.sh",nofork
```

Reload custom_event_file.sh with:
```bash
killall hyprevents -USR1
```

_Verbose_: pass '-v' as first argument to hyprevents to print all events to stderr
