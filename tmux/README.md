# TMux

How to use TMus for terminal multiplextion?
```bash
tmux new -s <new-session>
```

How to change the configuration to set a custom configuration?
```bash
nvim ~/.tmux.conf
tmux source-file ~/.tmux.conf
```
and use your custom configuration.

## How to restart tmux configuration?

It sounds like tmux might still be referencing the old configuration file. Here are a few steps you can try to resolve this issue:

1. **Check Current Configuration**: Verify that tmux is indeed using the old `.tmux.conf` file. You can do this by running `tmux show-options -g` to list the global options currently in use.

2. **Reload Configuration**: If tmux is using the old configuration, you can reload the new configuration file by running `tmux source-file ~/.tmux.conf` or `tmux source-file /path/to/new/.tmux.conf`.

3. **Restart Tmux**: Sometimes, simply restarting tmux can help apply the new configuration. You can do this by detaching from all sessions (`tmux detach-client -a`) and then killing the tmux server (`tmux kill-server`) before starting a new session.

4. **Check for Multiple Configuration Files**: Ensure there are no other `.tmux.conf` files in other directories that might be conflicting. You can search for them using `find / -name .tmux.conf` and remove or rename any duplicates.

5. **Verify Path**: Double-check the path to the new configuration file and make sure it is correct. You can set the path in your shell profile (e.g., `.bashrc` or `.zshrc`) by adding `export TMUX_CONF=/path/to/new/.tmux.conf` and then sourcing the new configuration in your tmux session with `source-file $TMUX_CONF`.
