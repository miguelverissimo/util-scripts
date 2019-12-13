#!/usr/bin/env sh

FILES=*
for f in $FILES
do
  if [ "$f" == "install.sh" ]; then continue; fi

  if [ -f "/usr/local/bin/$f" ]; then
    echo "Removing existing symlink for $f..."
    rm -f "/usr/local/bin/$f"
  fi

  echo "Creating symlink to $f in /usr/local/bin/$f..."
  ln -s "$(pwd)/$f" "/usr/local/bin/$f"
done
