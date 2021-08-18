class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.6/opm-mac-4.8.6.tar.gz"
  sha256 "90d8fbd1d61c98db34a8b2745b97de8f2fac9bd0d32a410adc91ea55482a5b65"
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
