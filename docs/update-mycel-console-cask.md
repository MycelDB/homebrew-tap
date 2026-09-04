# Update the Mycel Console cask

1. Wait for the `MycelDB/mycel-console` tag release workflow to publish DMGs:

   ```text
   mycel-console_<version>_aarch64.dmg
   mycel-console_<version>_x86_64.dmg
   ```

2. Download or read the `.sha256` release assets and update `Casks/mycel-console.rb`:

   ```rb
   version "X.Y.Z"
   arch arm: "aarch64", intel: "x86_64"

   sha256 arm:   "<aarch64-dmg-sha256>",
          intel: "<x86_64-dmg-sha256>"
   ```

3. Validate locally:

   ```sh
   brew audit --cask --online myceldb/tap/mycel-console
   brew install --cask myceldb/tap/mycel-console
   ```

The initial cask uses `sha256 :no_check` only until the first automated DMG release assets exist. Prefer architecture-specific checksums for normal releases.
