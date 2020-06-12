class Oneshot < Formula
  desc "A single-shot HTTP server."
  homepage ""
  version "0.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/raphaelreyna/oneshot/releases/download/v0.6.0/oneshot_v0.6.0.darwin_x86_64"
    sha256 "83ceee7a7c9295260152635d38b274e491c467a38d82231f063a662e5e48179a"
  elsif OS.linux?
    url "https://github.com/raphaelreyna/oneshot/releases/download/v0.6.0/oneshot_v0.6.0.linux_x86_64"
    sha256 "55495f391196c981e91b471836f0f73a5c86e96ee0573be04eec137797880883"
  end

  def install
    if OS.mac?
      bin.install "oneshot_v0.6.0.darwin_x86_64" => "oneshot"
    elsif OS.linux?
      bin.install "oneshot_v0.6.0.linux_x86_64" => "oneshot"
    end
  end
end
