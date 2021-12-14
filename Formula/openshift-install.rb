class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.24/openshift-install-mac-4.8.24.tar.gz"
    sha256 "21abdfb87c820596327ac25cd94b479c6e8d09b29ce876546b374012cd15d232"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.24/openshift-install-linux-4.8.24.tar.gz"
    sha256 "d29185353ce02b50c8b2f451955b4c8abb2ba1def0ebbd43737d33acb96690a8"
  end

  def install
    bin.install "openshift-install"
  end

  test do
    run_output = shell_output("#{bin}/openshift-install 2>&1")
    assert_match "Creates OpenShift clusters", run_output
  end
end
