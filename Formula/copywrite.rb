# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Copywrite < Formula
  desc "copywrite -- utilities for managing copyright headers and license files for GitHub repos"
  homepage "https://github.com/hashicorp/copywrite"
  version "0.16.6"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.6/copywrite_0.16.6_darwin_arm64.tar.gz"
      sha256 "95746cd3e5fb8c597419ed3889eff5a171d6ea5b03d1527306264deb1776bc53"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.6/copywrite_0.16.6_darwin_x86_64.tar.gz"
      sha256 "8751a979d8b513114dadee1bbece7019e68fb7501bbe930ee0d21b878288d317"

      def install
        bin.install "copywrite"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.6/copywrite_0.16.6_linux_x86_64.tar.gz"
      sha256 "dc8141064d2674a6533d2ce35756ae96dfc432b9809e59a2b7c8a730f7102295"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.6/copywrite_0.16.6_linux_arm64.tar.gz"
      sha256 "658837c3ca68c04d778da6da7f3680fac2caa22a886e9557c4ff859e91fa0901"

      def install
        bin.install "copywrite"
      end
    end
  end

  test do
    system "#{bin}/copywrite --version"
  end
end
