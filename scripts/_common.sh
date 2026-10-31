#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Log line that tells ynh_systemctl the service has started. Open WebUI logs it
# on every start, once the requirements of tools and functions are installed.
# Do not use "No requirements found in frontmatter": it is not logged as soon as
# a tool or function declares requirements, which makes the start time out.
startup_marker="Scheduler worker started"
