class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.24/opm-mac-4.8.24.tar.gz"
    sha256 "d5b591a77b230952ba226b7f69d4804c475ad2e8dca629e8410d286157457017"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.24/opm-linux-4.8.24.tar.gz"
    sha256 "66cab2285f96e8f9cf0693a20684c9ee70602377d20c151a8bbd2037cb429317"
  end

  def install
    bin.install "darwin-amd64-opm" => "opm"
  end

  test do
    run_output = shell_output("#{bin}/opm 2>&1")
    assert_match "with operator-registry and", run_output
  end
end
