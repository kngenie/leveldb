#
# Regular cron jobs for the libleveldb package
#
0 4	* * *	root	[ -x /usr/bin/libleveldb_maintenance ] && /usr/bin/libleveldb_maintenance
