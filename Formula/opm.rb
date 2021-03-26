class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.7.4/opm-mac-4.7.4.tar.gz"
  sha256 "ab77db4eccac02038d8905b1e59e82cb0ddcfd7c358d83e4a434140123aa1a26"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "darwin-amd64-opm" => "opm"
  end

  test do
    run_output = shell_output("#{bin}/opm 2>&1")
    assert_match "with operator-registry and", run_output
  end
end
