# homebrew-tongwen

Homebrew tap for [`tongwen`](https://github.com/chan1plus/tongwen) — an OpenAI-compatible local Simplified → Traditional Chinese (s2tw) endpoint.

## Install

```sh
brew tap chan1plus/tongwen
brew install tongwen
```

Until a tagged release is published, install the HEAD version:

```sh
brew install --HEAD tongwen
```

## Run as a background service

```sh
brew services start tongwen
```

The service listens on `127.0.0.1:1180` by default. Override via the
`TONGWEN_PORT` and `TONGWEN_HOST` environment variables.

## Updating the formula on release

When cutting a new tagged release of `tongwen`:

1. Bump `version` in `Formula/tongwen.rb`.
2. Update `url` to point at the new tag tarball.
3. Recompute `sha256`:

   ```sh
   curl -L https://github.com/chan1plus/tongwen/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```

4. Commit and push.

## License

MIT
