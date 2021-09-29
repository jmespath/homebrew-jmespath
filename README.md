# homebrew-jmespath
Homebrew tap of various JMEPath tools.

# Updating to a new version of jp

You can run this command to update the jp formula:

```
./update-version.sh 0.2.0
```

To test the formula, you can use this command:

```
brew install --build-from-source --verbose ./Formula/jp.rb
```

Then you can check that `/usr/local/bin/jp` has been updated correctly.
