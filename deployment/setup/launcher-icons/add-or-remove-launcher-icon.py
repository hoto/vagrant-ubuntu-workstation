#!/usr/bin/env python3

# http://askubuntu.com/questions/611162/how-do-you-add-remove-applications-to-from-the-unity-launcher-from-command-line
# FETCH ALL ICONS:
# gsettings get com.canonical.Unity.Launcher favorites

import subprocess
import sys

desktopfile = sys.argv[1]

def current_launcher():
    get_current = subprocess.check_output(["gsettings", "get", "com.canonical.Unity.Launcher", "favorites"]).decode("utf-8")
    return eval(get_current)

def set_launcher(desktopfile):
    curr_launcher = current_launcher()
    last = [i for i, x in enumerate(curr_launcher) if x.startswith("application://")][-1]
    new_icon = "application://"+desktopfile
    if sys.argv[2] == "a":
        if not new_icon in curr_launcher:
            curr_launcher.insert(last, new_icon)
            subprocess.Popen(["gsettings", "set", "com.canonical.Unity.Launcher","favorites",str(curr_launcher)])
    elif sys.argv[2] == "r":
        curr_launcher.remove(new_icon)
        subprocess.Popen(["gsettings", "set", "com.canonical.Unity.Launcher","favorites",str(curr_launcher)])

set_launcher(desktopfile)
