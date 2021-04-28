class Rosa < Formula
  desc "Command-line tool for Red Hat OpenShift Service on AWS"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/rosa/1.0.5/rosa-macosx.tar.gz"
  sha256 "454d10e41a9befbeb96c55f501707daede8206b72647313402eae3bed8e5f69c"
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
