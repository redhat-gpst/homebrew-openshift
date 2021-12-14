class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.9.10/opm-mac-4.9.10.tar.gz"
    sha256 "afbaf3dfa649e9954136b444a7b267eb382569518943b8690d17f803017b6d5f"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.9.10/opm-linux-4.9.10.tar.gz"
    sha256 "43301f30a48e6ab5bdcb5dd69b8c9078aa71ff26fa1ba01422521cc1e9c89b51"
  end

  def install
    bin.install "darwin-amd64-opm" => "opm"
  end

  test do
    run_output = shell_output("#{bin}/opm 2>&1")
    assert_match "with operator-registry and", run_output
  end
end
