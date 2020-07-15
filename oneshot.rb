# This file was generated by GoReleaser. DO NOT EDIT.
class Oneshot < Formula
  desc "A single fire HTTP server."
  homepage "https://github.com/raphaelreyna/oneshot"
  version "1.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/raphaelreyna/oneshot/releases/download/v1.1.3/oneshot_1.1.3.macos-x86_64.tar.gz"
    sha256 "812eeb9787ae2d90c86cf946441d5b0bdd1b240c41644bbc9e71d2c1bdc2de2a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/raphaelreyna/oneshot/releases/download/v1.1.3/oneshot_1.1.3.linux-x86_64.tar.gz"
      sha256 "2cc34898b9ac2852e225f65c0158acc3534448f10603928f4d3bcca2cfcb7cee"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/raphaelreyna/oneshot/releases/download/v1.1.3/oneshot_1.1.3.linux-arm64.tar.gz"
        sha256 "368a7042c60932b332ef09516e4b940cedf35c79f59ba5744a3c7fb9a267dd90"
      else
        url "https://github.com/raphaelreyna/oneshot/releases/download/v1.1.3/oneshot_1.1.3.linux-arm.tar.gz"
        sha256 "9bff290c86409cc5f5a6f2b0586140e4cd83bcb0b9e5413d6f16156b5a65c5e1"
      end
    end
  end

  def install
    bin.install "oneshot"
  end
end
