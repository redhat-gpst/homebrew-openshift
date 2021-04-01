class Rosa < Formula
  desc "Command-line tool for Red Hat OpenShift Service on AWS"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/rosa/1.0.2/rosa-macosx.tar.gz"
  sha256 "96fae242bdad203bacec5bc26cba452cac67b7e9ba4e6c75391c98adc2ba783a"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/rosa 2>&1")
    assert_match "Red Hat OpenShift Service on AWS", run_output
  end
end
