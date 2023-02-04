# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecsource < Formula
  desc "ECS Task Definition tool to display resources such as CPU, memory, and memory reservations in an easy-to-read format."
  homepage "https://github.com/tatsuo48/ecsource"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tatsuo48/ecsource/releases/download/v1.0.2/ecsource_Darwin_arm64.tar.gz"
      sha256 "561dceb18daf849bc6826a1bac4f0ffa3ea9d0c37775a1c5bb81d5b5492963c0"

      def install
        bin.install "ecsource"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tatsuo48/ecsource/releases/download/v1.0.2/ecsource_Darwin_x86_64.tar.gz"
      sha256 "5dbf248a4cc442f5497cd5e4ac3e509f4144bdbfb12ff658af68cf053481f5bb"

      def install
        bin.install "ecsource"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tatsuo48/ecsource/releases/download/v1.0.2/ecsource_Linux_x86_64.tar.gz"
      sha256 "c024c203eba9d346a9c2f4b81586f026e3b87a6091090cbfcc1211ec5c0465a8"

      def install
        bin.install "ecsource"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tatsuo48/ecsource/releases/download/v1.0.2/ecsource_Linux_arm64.tar.gz"
      sha256 "9a6ed3892a80a600309e53c05b91ba97f7bd1ca3ae0170bad3717e89196897b4"

      def install
        bin.install "ecsource"
      end
    end
  end

  test do
    system "#{bin}/ecsource", "-v"
  end
end
