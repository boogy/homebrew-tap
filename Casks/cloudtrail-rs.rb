cask "cloudtrail-rs" do
  version "0.2.0"
  sha256 "39f7b5e1f3e98ebdb5b77a03edbc22ff84941dbb76ed72e9aad70e6331469d23"

  url "https://github.com/boogy/cloudtrail-rs/releases/download/v#{version}/cli-#{version}-darwin-arm64.tar.gz"
  name "cloudtrail-rs"
  desc "Local tooling for cloudtrail-rs exclusion rules"
  homepage "https://github.com/boogy/cloudtrail-rs"

  depends_on arch: :arm64

  binary "cloudtrail-rs"

  # Apple quarantines unsigned binaries downloaded from the internet.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/cloudtrail-rs"]
  end
end
