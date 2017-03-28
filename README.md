# Yarn extension for Chassis
The Yarn extension automatically sets up your Chassis instance to be able to use [yarn](https://github.com/yarnpkg/yarn) inside your Chassis box.

## Activation
Ensure you have a Chassis instance set up locally already and that you have the Nodejs extension installed. https://github.com/Chassis/nodejs

```
# In your Chassis dir:
git clone --recursive https://github.com/Chassis/Yarn.git extensions/yarn

# Reprovision
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
    - chassis/nodejs
# Reprovision
vagrant provision
```

Yarn has now been installed inside your Chassis box.
