# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n

# set PATH so it includes user's .tools directory if it exists
if [ -d "$HOME/.tools" ] ; then
  PATH="$HOME/.tools:$PATH"
fi

