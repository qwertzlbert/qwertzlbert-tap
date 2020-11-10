# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformLs < Formula
  desc "Terraform Language Server"
  homepage "https://github.com/hashicorp/terraform-ls"
  version "0.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://releases.hashicorp.com/terraform-ls/0.9.0/terraform-ls_0.9.0_darwin_amd64.zip"
    sha256 "16425f73dd32274e7601ee1d6298671aac41bc7d0441d40e10f2aa3c94d26456"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://releases.hashicorp.com/terraform-ls/0.9.0/terraform-ls_0.9.0_linux_amd64.zip"
      sha256 "fd99d920855af7637b96f84619d8a108dc4dd23d2d6a7e7bcdbb090a393718f1"
    end
  end
  
  conflicts_with "terraform-ls"

  def install
    bin.install "terraform-ls"
  end

  test do
    system "#{bin}/terraform-ls --version"
  end
end
