# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecsource < Formula
  desc "ECS Task Definition tool to display resources such as CPU, memory, and memory reservations in an easy-to-read format."
  homepage "https://github.com/tatsuo48/ecsource"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tatsuo48/ecsource/releases/download/v1.0.6/ecsource_Darwin_arm64.tar.gz"
      sha256 "7fc905184f1c501b5b4e768ecaa46e68639b7acd33eaf77e16bcf2e054bc6bd1"

      def install
        bin.install "ecsource"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tatsuo48/ecsource/releases/download/v1.0.6/ecsource_Darwin_x86_64.tar.gz"
      sha256 "00c69ed704e2e136caa5a8b5fa89bd100ec298371177ad91e516fb82f280bbda"

      def install
        bin.install "ecsource"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tatsuo48/ecsource/releases/download/v1.0.6/ecsource_Linux_x86_64.tar.gz"
      sha256 "5e0c091cb3a588adccebbd057099413411aa7e775ac9bde7f81263f7f7e15969"

      def install
        bin.install "ecsource"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tatsuo48/ecsource/releases/download/v1.0.6/ecsource_Linux_arm64.tar.gz"
      sha256 "28211b48687048e7c07c3fbec811ad4999421a645f50e18864777b78156e60c8"

      def install
        bin.install "ecsource"
      end
    end
  end

  test do
    system "#{bin}/ecsource", "-v"
  end
end
