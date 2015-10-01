class Jp < Formula
  desc "Command-line interface to JMESPath, a query language for JSON"
  homepage "http://jmespath.org/"
  url "https://github.com/jmespath/jp/archive/0.1.1.tar.gz"
  sha256 "f19863c1683a4789bdefbc098348743898ed8ec3c8706db3ab940d4a57688bf9"

  depends_on "go" => :build

  def install
    system "scripts/build-self-contained.sh"
    bin.install "jp"
  end

  test do
    assert_equal "bar\n", pipe_output("#{bin}/jp -u foo", '{"foo": "bar"}')
  end
end
