class Rosa < Formula
  desc "Command-line tool for Red Hat OpenShift Service on AWS"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/rosa/1.1.0/rosa-macosx.tar.gz"
  sha256 "fa7f8286e7f7c23b2b49df0b67aebc4e41b32272f4f1e00f0193fdcbbe1736f4"
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
