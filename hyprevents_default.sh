#!/bin/sh

# default handlers for shellevents
#
# override the function in your own events
# file to provide a custom handler
#
# comments inside each handler list the variables
# that are set when the handler is invoked

event_workspace() {
  : # WORKSPACENAME
  echo 1
}

event_focusedmon() {
  : # MONNAME WORKSPACENAME
  echo 2
}

event_activewindow() {
  : # WINDOWCLASS WINDOWTITLE
  echo 3
}

event_fullscreen() {
  : # ENTER (0 if leaving fullscreen, 1 if entering)
  echo 3
}

event_monitorremoved() {
  : # MONITORNAME
  echo 4
}

event_monitoradded() {
  : # MONITORNAME
  echo 5
}

event_createworkspace() {
  : # WORKSPACENAME
  echo 6
}

event_destroyworkspace() {
  : # WORKSPACENAME
  echo 7
}

event_moveworkspace() {
  : # WORKSPACENAME MONNAME
  echo 8
}

event_activelayout() {
  : # KEYBOARDNAME LAYOUTNAME
  echo 9
}

event_openwindow() {
  : # WINDOWADDRESS WORKSPACENAME WINDOWCLASS WINDOWTITLE
  echo 10
}

event_closewindow() {
  : # WINDOWADDRESS
  echo 11
}

event_movewindow() {
  : # WINDOWADDRESS WORKSPACENAME
  echo 12
}

event_openlayer() {
  : # NAMESPACE
  echo 13
}

event_closelayer() {
  : # NAMESPACE
  echo 14
}

event_submap() {
  : # SUBMAPNAME
  echo 15
}
