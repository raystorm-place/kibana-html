# Dev
Install dependencies, clear plugin cache, redeploy and restart

You have to use `bower-installer` in order no to package all the modules in your plugin, but only the mandatory files:

```bash
npm install -g bower-installer
```

Then all the necessary files will be in `public/deps`.

In the `kibana-html-plugin`, run :
```bash
bower-installer
```

Then, to test it, you can copy all the directory directly into the plugins directory of Kibana :
```bash
cd <KIBANA_DIRECTORY>
rm -rf ./optimize/*
cp -R kibana-html-plugin ./plugins/
```

Then restart Kibana :
```bash
bin/kibana
```

# Release

```bash
tar -czf kibana-html-plugin-v0.0.x.tar.gz --exclude .git --exclude .idea --exclude *.iml --exclude src-noconflict --exclude src --exclude src-min --exclude demo kibana-html-plugin
```

## Debug scope

1. Open Firebug
2. Select HTML
3. Enter `angular.element($0).scope()` in console