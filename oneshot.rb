class Oneshot < Formula
  desc "A single-shot HTTP server."
  homepage ""
  version "0.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/raphaelreyna/oneshot/releases/download/v0.6.0/oneshot_v0.6.0.darwin_x86_64"
    sha256 "68d0c8485b7e0ef229334708b06028e27c1d744aae08e6c22e93cce06cc40c36"
  elsif OS.linux?
    url "https://github.com/raphaelreyna/oneshot/releases/download/v0.6.0/oneshot_v0.6.0.linux_x86_64"
    sha256 "419c00d9749397d8a8894ae1a529583f067877556d0782df9faf96bc19b8601b"
  end

  def install
    if OS.mac?
      bin.install "oneshot_v0.6.0.darwin_x86_64" => "oneshot"
    elsif OS.linux?
      bin.install "oneshot_v0.6.0.linux_x86_64" => "oneshot"
    end
  end
end
