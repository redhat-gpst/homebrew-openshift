class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.7.12/opm-mac-4.7.12.tar.gz"
  sha256 "1fc207c96ab988a4a1ef3dfcb7075adc2d44051ae16c520f0ffc3fc1b003ca42"
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
