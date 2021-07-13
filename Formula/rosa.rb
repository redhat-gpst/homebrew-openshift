class Rosa < Formula
  desc "Command-line tool for Red Hat OpenShift Service on AWS"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/rosa/1.0.9/rosa-macosx.tar.gz"
  sha256 "070dc38b7638198b49de1a7a088d5b94df1ab40428fbbd7d30b6fccc513dd123"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "rosa"
  end

  test do
    run_output = shell_output("#{bin}/rosa 2>&1")
    assert_match "Red Hat OpenShift Service on AWS", run_output
  end
end
