class Rosa < Formula
  desc "Command-line tool for Red Hat OpenShift Service on AWS"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/rosa/1.1.5/rosa-macosx.tar.gz"
    sha256 "a75b6b139008f47528e29192243175c640258b4bc0b95a79770e0cec2a976214"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/rosa/1.1.5/rosa-linux.tar.gz"
    sha256 "470ca9f0164f3ebaed67dd2e7bf0f4feba69335cf3c45bfe57f362228e1e5d34"
  end

  def install
    bin.install "rosa"
  end

  test do
    run_output = shell_output("#{bin}/rosa 2>&1")
    assert_match "Red Hat OpenShift Service on AWS", run_output
  end
end
