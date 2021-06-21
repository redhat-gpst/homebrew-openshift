class Rosa < Formula
  desc "Command-line tool for Red Hat OpenShift Service on AWS"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/rosa/1.0.8/rosa-macosx.tar.gz"
  sha256 "612089c2347c6c628232fe63f8bffe146ac70ef47ce4a11e23d2286935abe8d3"
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
