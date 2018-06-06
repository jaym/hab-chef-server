# hab-chef-server
This is a prototype to see if we can run chef server in a hab studio.

## How to make it (maybe) work
You must use `hab < 0.56` currently because of the way the `chef-server-ctl` service
tries to configure things.

```
build .
runit
```

Only do the runit once. If you need to `sup-term`, you'll have to `rm -r /hab/sup/default/specs`.
If you don't do this, hab will likely dead-lock because services will not come up in the correct
order.
