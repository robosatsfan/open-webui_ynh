#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Log line that tells ynh_systemctl the service has started. Open WebUI logs it
# on every start, once the requirements of tools and functions are installed.
# Do not use "No requirements found in frontmatter": it is not logged as soon as
# a tool or function declares requirements, which makes the start time out.
startup_marker="Scheduler worker started"

# Open WebUI trusts the Ynh-User-Email header. SSOwat strips client-sent copies
# of it only since 12.1.1, and YunoHost itself accepts older SSOwat versions.
# With those, any client could sign in as any user by sending this header.
check_ssowat_version() {
    local version
    version=$(dpkg-query --show --showformat='${Version}' ssowat)
    if dpkg --compare-versions "$version" lt 12.1.1; then
        ynh_die "SSOwat $version is too old for this app. Update the system with 'yunohost tools update' and 'yunohost tools upgrade system', then try again."
    fi
}
