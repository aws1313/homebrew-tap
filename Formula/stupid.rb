class Stupid < Formula
  include Language::Python::Virtualenv

  desc "a CLI and tray client for certain features of stud.ip"
  homepage "https://github.com/LennikGamez/stupid"
  url "https://files.pythonhosted.org/packages/.../foo-1.0.tar.gz"
  sha256 "abc123abc123abc123abc123abc123abc123abc123abc123abc123abc123abc1"
  license "GPL-3.0"
  
  depends_on "python@3.14"

  # === ressources begin ===

  # === ressources end ===

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/foo --version")
  end
end
