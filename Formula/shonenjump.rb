# This file was generated by GoReleaser. DO NOT EDIT.
class Shonenjump < Formula
  desc "A faster way to change directory and improve command line productivity."
  homepage "https://github.com/suzaku/shonenjump"
  version "0.7.18"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/suzaku/shonenjump/releases/download/v0.7.18/shonenjump_Mac_x86_64.tar.gz"
    sha256 "73b97890f93c165c2261fdf3ffc7c3d9403c1a156479fa2f26145d3a93bbede4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/suzaku/shonenjump/releases/download/v0.7.18/shonenjump_Linux_x86_64.tar.gz"
    sha256 "6461f0281bb03bdcd6551a95338a3cb8a0a006726de3e38e7d40d2b50e13408c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/suzaku/shonenjump/releases/download/v0.7.18/shonenjump_Linux_armv6.tar.gz"
    sha256 "2c81067d4bcf4b549b4973dce7a74ec87f51cb0ec8ac339dc1f1a646cc22c902"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/suzaku/shonenjump/releases/download/v0.7.18/shonenjump_Linux_arm64.tar.gz"
    sha256 "60f94cbd96c8d20f78b8302d70e83e5a4bfed64aef06a6d5eb6eae23a03b9717"
  end

  def install
    bin.install "shonenjump"
    path = prefix/"etc/profile.d"
    path.mkpath
    system "cp", "scripts/shonenjump.bash", path/"shonenjump.bash"
    system "cp", "scripts/shonenjump.zsh", path/"shonenjump.zsh"
    system "cp", "scripts/shonenjump.fish", path/"shonenjump.fish"
    zsh_completion.install "scripts/_j" => "_j"
    fish_completion.install "scripts/j.fish"
  end

  def caveats; <<~EOS
    If you are using Bash, add the following line to your ~/.bash_profile:

      [ -f #{etc}/profile.d/shonenjump.bash ] && . #{etc}/profile.d/shonenjump.bash

    If you are using Zsh, add the following line to your ~/.zshrc:

      [ -f #{etc}/profile.d/shonenjump.zsh ] && . #{etc}/profile.d/shonenjump.zsh

    If you are using Fish, add the following line to your ~/.config/fish/config.fish:

      [ -f #{etc}/profile.d/shonenjump.fish ]; and . #{etc}/profile.d/shonenjump.fish
  EOS
  end

  test do
    system "#{bin}/shonenjump -version"
  end
end
