class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.13/opm-mac-4.8.13.tar.gz"
    sha256 "53ea2c15370b893b26416b523343b38b291b0657945f937d0e02b3277042afb5"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.13/opm-linux-4.8.13.tar.gz"
    sha256 "24a14d9208a19b5dc41151e1a5a739de7ffa461c9c185643f3652f30e041cdef"
  end

  bottle :unneeded

  def install
    bin.install "darwin-amd64-opm" => "opm"
  end

  test do
    run_output = shell_output("#{bin}/opm 2>&1")
    assert_match "with operator-registry and", run_output
  end
end
