# Vert.x Core 3.3.2 GEM packaging

## setup

```
bundle install
```

## pack GEM

```
jgem build vertx-core.gemspec
```

## install the GEM

jgem install vertx-core-3.3.2.gem

## just run the code

make sure you use jruby (via rbenv, rvm, etc)

```
jruby test-server.rb
```
