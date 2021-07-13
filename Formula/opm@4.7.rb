class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.7.20/opm-mac-4.7.20.tar.gz"
  sha256 "7c6d0629c0eced86ca6a5822ef752cf5c8567f26b591aeabd401bc57a91d01e4"
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
