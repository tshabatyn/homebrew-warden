
class Warden < Formula
  desc "Warden is a CLI utility for working with docker-compose environments"
  homepage "https://warden.dev"
  license "MIT"
  version "tshabatyn.0.15.0a"
  url "https://github.com/tshabatyn/warden/archive/refs/tags/tshabatyn.0.15.0a.tar.gz"
  sha256 "d6050c0167541448e89ca5e52175d494b61563b4717bedc456691380bde4968a"
  head "https://github.com/tshabatyn/warden.git", :branch => "main"

  depends_on "gettext"
  depends_on "mutagen-io/mutagen/mutagen"
  depends_on "pv" => :recommended

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Warden manages a set of global services on the docker host machine. You
      will need to have Docker installed and docker-compose available in your
      local $PATH configuration prior to starting Warden.

      To start warden simply run:

        warden svc up

      This command will automatically run "warden install" to setup a trusted
      local root certificate and sign an SSL certificate for use by services
      managed by warden via the "warden sign-certificate warden.test" command.

      To print a complete list of available commands simply run "warden" without
      any arguments.

      Documentation is available at: https://tshabatyn.github.io/ or https://docs.warden.dev
    EOS
  end
end
