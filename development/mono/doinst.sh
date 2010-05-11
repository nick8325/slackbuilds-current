
config() {
  NEW="$1"
  OLD="`dirname $NEW`/`basename $NEW .new`"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "`cat $OLD | md5sum`" = "`cat $NEW | md5sum`" ]; then
    # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

config etc/mono/1.0/machine.config.new
config etc/mono/1.0/DefaultWsdlHelpGenerator.aspx.new
config etc/mono/2.0/machine.config.new
config etc/mono/2.0/web.config.new
config etc/mono/2.0/DefaultWsdlHelpGenerator.aspx.new
config etc/mono/config.new
config etc/mono/browscap.ini.new
