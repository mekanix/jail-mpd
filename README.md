# jail-mpd

For default config to work, you need the following in your /etc/devfs.rules:

```
[audio=6]
add include $devfsrules_hide_all
add include $devfsrules_unhide_basic
add include $devfsrules_unhide_login
add path 'dsp*' unhide mode 0666
add path 'vdsp*' unhide mode 0666
add path '*midi*' unhide mode 0666
add path 'mixer*' unhide mode 0666
add path 'sndstat' unhide mode 0666
add path 'bpf*' unhide
add path 'pf*' unhide
```

Once you add above rule, you must `service devfs restart` before creating the
jail.
