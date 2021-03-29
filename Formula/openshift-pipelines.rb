class OpenshiftPipelines < Formula
  desc "Red Hat OpenShift Pipelines management"
  homepage "https://www.openshift.com/"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/0.15.0/tkn-macos-amd64-0.15.0.tar.gz"
  sha256 "958a51c975a8009148555b684c8e0c0c3bf471ff5d1a19f304ae87a583aa5db8"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "tkn"
  end

  test do
    run_output = shell_output("#{bin}/tkn 2>&1")
    assert_match "OpenShift", run_output
  end
end
