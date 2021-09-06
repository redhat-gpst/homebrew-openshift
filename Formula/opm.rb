class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.9/opm-mac-4.8.9.tar.gz"
    sha256 "bab26d07a7acc49fb88063f2b7aa4a60a6e5318288cd96d1fb5a207f33cb74c1"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.9/opm-linux-4.8.9.tar.gz"
    sha256 "6b51baa9350ec8da240d6a7096f4eeaddc7506b33489765bc3d215e545551cd1"
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
