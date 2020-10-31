# This file was generated by GoReleaser. DO NOT EDIT.
class Oneshot < Formula
  desc "A single fire HTTP server."
  homepage "https://github.com/raphaelreyna/oneshot"
  version "1.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/raphaelreyna/oneshot/releases/download/v1.3.1/oneshot_1.3.1.macos-x86_64.tar.gz"
    sha256 "716af9caf6393910e52998577ac8f8e7b2cd49904fe7fe2813f4ef8bfab7a760"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/raphaelreyna/oneshot/releases/download/v1.3.1/oneshot_1.3.1.linux-x86_64.tar.gz"
      sha256 "dfe8ca4b99aa6bcfcb635a178710573f94c61311725e789b87485d6ed07cdfcc"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/raphaelreyna/oneshot/releases/download/v1.3.1/oneshot_1.3.1.linux-arm64.tar.gz"
        sha256 "80d8a391906ca764654b64c74fb100db2b5fa9f6db3f9fa361b89a36d0a578b0"
      else
        url "https://github.com/raphaelreyna/oneshot/releases/download/v1.3.1/oneshot_1.3.1.linux-arm.tar.gz"
        sha256 "0052080354c0c830d7ed37a5a1837954f0770ae94b46e8daee8208a4f29a8cf3"
      end
    end
  end

  def install
    bin.install "oneshot"
  end
end
