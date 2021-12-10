class OpenshiftInstall < Formula
  desc "Red Hat OpenShift installtion program"
  homepage "https://www.openshift.com/"
  license "Apache-2.0"

  if OS.mac?
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.23/openshift-install-mac-4.8.23.tar.gz"
    sha256 "7cd842b6f9da29c62fef14534049b70955d394203460559a42aba006e11a6f03"
  else
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.8.23/openshift-install-linux-4.8.23.tar.gz"
    sha256 "9005af0e02d1ff97a800337f1e10304397932dc46c6ef0e6c26088206522aa86"
  end

  def install
    bin.install "openshift-install"
  end

  test do
    run_output = shell_output("#{bin}/openshift-install 2>&1")
    assert_match "Creates OpenShift clusters", run_output
  end
end
