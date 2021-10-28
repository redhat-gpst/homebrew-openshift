class Opm < Formula
  desc "CLI to interact with operator-registry and build indexes of operator content"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.17/opm-mac-4.8.17.tar.gz"
    sha256 "e3af48baa825800193b21ceee359103d306b99939cbd705a6c113714d784bca7"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.17/opm-linux-4.8.17.tar.gz"
    sha256 "b32f220966e1e24d2b8c532b9e318ed3d7bc6cc34acf7726eabbb6d583ff755e"
  end

  def install
    bin.install "darwin-amd64-opm" => "opm"
  end

  test do
    run_output = shell_output("#{bin}/opm 2>&1")
    assert_match "with operator-registry and", run_output
  end
end
