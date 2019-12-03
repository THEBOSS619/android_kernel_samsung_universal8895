#!/sbin/sh

. "$env";

cd "$tmp" && [ "$(ls)" ] || exit 0;

# Make init.d path if non-existent
print "Initializing init.d support...";
mkdir /system/etc/init.d;
chmod 755 /system/etc/init.d;

print "Done!";
exit 0;
