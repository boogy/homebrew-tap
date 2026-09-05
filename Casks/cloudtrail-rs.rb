cask "cloudtrail-rs" do
  version "0.6.3"
  sha256 "5488ef472b6fc5566e14ab59f61b29ec2e9221a5dc5714f9a7c1db9ec9ab5360"

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
