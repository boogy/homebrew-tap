cask "cloudtrail-rs" do
  version "0.4.0"
  sha256 "84f6cb8acd81f33242d44da5bf98c3b3734e2e6c4cd9eb4cb96efe6331bb8975"

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
