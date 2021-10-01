class Rosa < Formula
  desc "Command-line tool for Red Hat OpenShift Service on AWS"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/rosa/1.1.2/rosa-macosx.tar.gz"
    sha256 "aa334a4746b619ae4623bd87242254eedb1f472bea1f722dbeb2e5832e81b1d7"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/rosa/1.1.2/rosa-linux.tar.gz"
    sha256 "d684fa110451ee5bcd9497f922699a3b8401279781b92428d6c607de12f160d3"
  end

  bottle :unneeded

  def install
    bin.install "rosa"
  end

  test do
    run_output = shell_output("#{bin}/rosa 2>&1")
    assert_match "Red Hat OpenShift Service on AWS", run_output
  end
end
