cask "cloudtrail-rs" do
  version "0.6.0"
  sha256 "ea081ee5844410a5f71486792414edd4efbae1b6007eaf298f793ce4cbbbcbf5"

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
