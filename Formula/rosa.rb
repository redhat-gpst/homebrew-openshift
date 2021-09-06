class Rosa < Formula
  desc "Command-line tool for Red Hat OpenShift Service on AWS"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/rosa/1.1.1/rosa-macosx.tar.gz"
    sha256 "70c3e7dbe9140f1b1d952a297329bfb0eb01be4077fcb94f53d80574aabac828"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/rosa/1.1.1/rosa-linux.tar.gz"
    sha256 "183eac244d6ff7371b17854c8b0b0a1eee0c33a149e818739ab423fe88b2ef21"
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
