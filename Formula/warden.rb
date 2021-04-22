
class Warden < Formula
  desc "Warden is a CLI utility for working with docker-compose environments"
  homepage "https://warden.dev"
  version "0.11.0"
  url "https://github.com/davidalger/warden/archive/0.11.0.tar.gz"
  sha256 "d6ba431d7fa4d42a922079d66216ca4c1a24076f44072cb4b95024dc488a9ab5"
  head "https://github.com/davidalger/warden.git", :branch => "develop"

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

      Documentation is available at: https://docs.warden.dev
    EOS
  end
end
