cask "cloudtrail-rs" do
  version "0.5.0"
  sha256 "90acc8066e532ce2c88fc748119681edce262fa71840f618e8e32fc8ea226f80"

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
