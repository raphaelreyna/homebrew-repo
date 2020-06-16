# This file was generated by GoReleaser. DO NOT EDIT.
class Oneshot < Formula
  desc "A single fire HTTP server."
  homepage "https://github.com/raphaelreyna/oneshot"
  version "0.6.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/raphaelreyna/oneshot/releases/download/v0.6.3/oneshot_0.6.3.macos_x86_64.tar.gz"
    sha256 "2104f9b94cdf2ceb368675d352b87c931f41f177172a066c55711ab8e0cea76f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/raphaelreyna/oneshot/releases/download/v0.6.3/oneshot_0.6.3.linux_x86_64.tar.gz"
      sha256 "1a4fb62e225dc416175b27a86d27a0039fff09c91a7e2b5b0b1275145828eb38"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/raphaelreyna/oneshot/releases/download/v0.6.3/oneshot_0.6.3.linux_arm64.tar.gz"
        sha256 "24b817c79411fe27fc57abca900764b0721b10a4daefa0402bfae72bc77da678"
      else
        url "https://github.com/raphaelreyna/oneshot/releases/download/v0.6.3/oneshot_0.6.3.linux_arm.tar.gz"
        sha256 "29b8e73d1673d0dd7ceb72966e7d35527e61343fadd06a785a039778ed0a39f2"
      end
    end
  end

  def install
    bin.install "oneshot"
  end
end
