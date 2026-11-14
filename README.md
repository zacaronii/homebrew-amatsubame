# Amatsubame for Homebrew

The Mac apps of [Amatsubame](https://amatsubame.com), Japanese immersion apps for your own media
servers: Yomu (Kavita), Miru (Jellyfin), Kiku (Audiobookshelf) and Hiku (a Safari extension).

```sh
brew install --cask zacaronii/amatsubame/yomu   # or miru, kiku, hiku
```

They need macOS 26 or later on Apple silicon. The apps are signed with Developer ID and notarized.
They're the same apps as on TestFlight, so install each one from one place only: remove the
TestFlight copy before installing it here, and the other way round. Your settings stay.

`brew upgrade` updates them when a new version is released. `brew uninstall --zap` also removes an
app's data, but not the setup the apps share.

The casks are updated by the release script in
[zacaronii/amatsubame](https://github.com/zacaronii/amatsubame); report problems there.
