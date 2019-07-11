class PubsubDeadLetterLog < Formula
  version '0.1.0'
  homepage 'https://github.com/wantedly/pubsub-dead-letter-log'
  url "https://github.com/wantedly/pubsub-dead-letter-log/releases/download/v0.1.0/psdll_darwin_amd64.zip"
  sha256 '39d200f9f778916ae17f09370e22d709f35825e2df319a73fca4ac8437738784'
  head 'https://github.com/wantedly/pubsub-dead-letter-log.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'pubsub-dead-letter-log'
  end
end
