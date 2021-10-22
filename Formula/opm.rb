class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.15/opm-mac-4.8.15.tar.gz"
    sha256 "79c885e36f76d3e6d8bc29216e63a495bd8568cf91efad723564c627497b34df"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.15/opm-linux-4.8.15.tar.gz"
    sha256 "d3cfe5bed5d390f274d9ef9bbb359931047a5727e358c12cc0fb860f5ae76844"
  end

  def install
    bin.install "darwin-amd64-opm" => "opm"
  end

  test do
    run_output = shell_output("#{bin}/opm 2>&1")
    assert_match "with operator-registry and", run_output
  end
end
