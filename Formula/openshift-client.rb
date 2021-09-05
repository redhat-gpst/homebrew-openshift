class OpenshiftClient < Formula
  desc "Red Hat OpenShift command-line interface tool"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.10/openshift-client-linux-4.8.10.tar.gz"
    sha256 "9d727adc9438bb7431344a7349ee88fbf05b5dbb856e678013a15c084b72cc9d"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.10/openshift-client-mac-4.8.10.tar.gz"
    sha256 "fb0e2be1dbe349878bdadd90ad8a78c4b684b295ca3d0fd8405278f25d53715f"
  end

  bottle :unneeded

  def install
    bin.install "oc"
  end

  test do
    run_output = shell_output("#{bin}/oc 2>&1")
    assert_match "OpenShift Client", run_output
  end
end
