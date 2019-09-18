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


## Installing Yarn dependencies

You can have Chassis automatically run `yarn install` in a number of directories in your project by adding a list of directories in one of your [yaml](http://docs.chassis.io/en/latest/config/) files. e.g.
```
yarn:
    paths:
        # Use absolute paths on the VM. For a default Chassis installation this should be:
        - /vagrant/content/plugins/yourplugin
        - /vagrant/content/themes/atheme
        # If you're using paths (http://docs.chassis.io/en/latest/config/#paths) in Chassis this should be:
        - /chassis/content/plugins/yourplugin
        - /chassis/content/themes/atheme
```

You'll need to run `vagrant provision` for those to be installed if you'd added them after your first initial Chassis `vagrant up`.

## Custom yarn command

You can have Chassis automatically run custom commands in a number of directories in your project by adding a list of directories in one of your [yaml](http://docs.chassis.io/en/latest/config/) files. e.g.
```
yarn:
    paths:
        - path: /vagrant/content/plugins/yourplugin
          command: 'yarn install && yarn compile"
        - /vagrant/content/themes/atheme
```
