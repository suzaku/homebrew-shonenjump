# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shonenjump < Formula
  desc "A faster way to change directory and improve command line productivity."
  homepage "https://github.com/suzaku/shonenjump"
  version "0.7.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suzaku/shonenjump/releases/download/v0.7.21/shonenjump_Mac_arm64.tar.gz"
      sha256 "6baf62b0776d5637f084e32e790e7149c525e058c3f77bbe2858acda06345964"

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
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzaku/shonenjump/releases/download/v0.7.21/shonenjump_Mac_x86_64.tar.gz"
      sha256 "522ebbb6a3c0ab31d42dc845adee53b6b970ffee490f133036db7b4952b6fe04"

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
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/suzaku/shonenjump/releases/download/v0.7.21/shonenjump_Linux_armv6.tar.gz"
      sha256 "9278ea2fb9943aee32e5f2e2fd282aad99c82b9787a2f55aeeb7f8d94088a95c"

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
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzaku/shonenjump/releases/download/v0.7.21/shonenjump_Linux_x86_64.tar.gz"
      sha256 "62e7139bf73063cb59df7cdd3478847b4b62ca8cf7b03e82445be68cdd10cfd4"

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
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suzaku/shonenjump/releases/download/v0.7.21/shonenjump_Linux_arm64.tar.gz"
      sha256 "eae3f6a43e3a7a3257a714e441f6d140bd9ac4a74bd24cf69bd262e21e294fa7"

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
    end
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
