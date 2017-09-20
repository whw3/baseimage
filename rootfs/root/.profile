# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "/root/bin" ] ; then
    PATH="/root/bin:$PATH"
fi

mesg n
