# Yarn extension for Chassis
The Yarn extension automatically sets up your Chassis instance to be able to use [yarn](https://github.com/yarnpkg/yarn) inside your Chassis box.

```
# In your Chassis dir:
git clone --recursive https://github.com/Chassis/Yarn.git extensions/yarn

```

Then you'll need to reprovision
```
cd ..
vagrant provision
```

Alternatively you can add the extension to one of your yaml config files. e.g.
```
# Extensions
#
# Install a list of extensions automatically
extensions:
    - chassis/yarn
```

Then you'll need to reprovision
```
vagrant provision
```

Yarn has now been installed inside your Chassis box.
