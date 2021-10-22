class Rosa < Formula
  desc "Command-line tool for Red Hat OpenShift Service on AWS"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/rosa/1.1.3/rosa-macosx.tar.gz"
    sha256 "14356e5948f75eda9537445c1bb0ecb5806459e80562af160679eb4e6138265b"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/rosa/1.1.3/rosa-linux.tar.gz"
    sha256 "9f5d0f960b79168442fc92e90fbc02ab51b9d80979b3da0c470f59d0214886be"
  end

  def install
    bin.install "rosa"
  end

  test do
    run_output = shell_output("#{bin}/rosa 2>&1")
    assert_match "Red Hat OpenShift Service on AWS", run_output
  end
end
