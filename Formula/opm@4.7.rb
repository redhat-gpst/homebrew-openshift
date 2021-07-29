class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.7.22/opm-mac-4.7.22.tar.gz"
  sha256 "a3cfc105edc0d189cf9d68f221cf20c3d7f70686d27e6470cba1f686bf11e9f2"
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
