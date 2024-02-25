# hyprevents
Invoke shell functions in response to Hyprland socket2 events. Forked from [hyprwm](https://github.com/hyprwm/contrib). hyprevents reads Hyprland events from stdin as documented at [wiki](http://wiki.hyprland.org/IPC/#tmphyprhissocket2sock).

The event string is parsed, splitting the data into individual arguments for each event received, a function with the name event_<eventname> is invoked when invoked, the data is passed as named arguments

## Install
```bash
yay -S hyprevents-git
```
or
```bash
sudo make install
```

## Usage
```bash
cp event_handler custom_event_handler
```
In `custom_event_handler` add implementations for the events you want to handle and run:
```bash
hyprevents --file custom_event_handler
```

Reload event handler with:
```bash
hyprevents -f custom_event_handler --reload
```

Kill event handler with:
```bash
hyprevents -f custom_event_handler --kill
```
