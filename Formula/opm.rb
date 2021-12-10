class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.23/opm-mac-4.8.23.tar.gz"
    sha256 "e7263343e68f5df9f5d4decd3319074fb1a7683b4fd4f86a5b681cd861dc148f"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.23/opm-linux-4.8.23.tar.gz"
    sha256 "96033efbeac336c279db445d1eea808bc16844a5a39b8ddd846957a48b7703d7"
  end

  def install
    bin.install "darwin-amd64-opm" => "opm"
  end

  test do
    run_output = shell_output("#{bin}/opm 2>&1")
    assert_match "with operator-registry and", run_output
  end
end
