##################################################
# TMMT CONFIGURATION SCRIPT
##################################################

#

##################################################
# CUSTOM PERMISSIONS
##################################################

set_permissions() {
	# Usage for directory:
	#   set_perm_recursive  <dirname>          <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
	# - Examples:
	#   set_perm_recursive $MODPATH/system/lib 0 0 0755 0644
	#   set_perm_recursive $MODPATH/system/vendor/lib/soundfx 0 0 0755 0644

	# Usage for single file:
	#   set_perm  <filename>                   <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
	# - Examples:
	#   set_perm $MODPATH/system/lib/libart.so 0 0 0644
	#   set_perm /data/local/tmp/file.txt 0 0 644

	# DO NOT MODIFY ANYTHING AFTER THIS
	ls -A ${MODPATH}/ | grep '\.sh' | while read sh_file; do chmod a+x ${sh_file}; done
}
