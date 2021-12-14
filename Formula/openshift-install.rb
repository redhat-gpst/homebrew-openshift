class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.9.10/openshift-install-mac-4.9.10.tar.gz"
    sha256 "9934d19617e8db159bd3a1f13e57cef288124000662a8c366fa95b8da620d897"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.9.10/openshift-install-linux-4.9.10.tar.gz"
    sha256 "cd819452308e104c8c31656fb005ebf807ede62730cc0a291030c4e64381098b"
  end

  def install
    bin.install "openshift-install"
  end

  test do
    run_output = shell_output("#{bin}/openshift-install 2>&1")
    assert_match "Creates OpenShift clusters", run_output
  end
end
