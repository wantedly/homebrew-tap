class Psdll < Formula
  version '0.1.3'
  homepage 'https://github.com/wantedly/psdll'
  url "https://github.com/wantedly/psdll/releases/download/v0.1.3/psdll_darwin_amd64.zip"
  sha256 'cb2acccc3fdc161fd11bb80e341470eb7b6ed086e3ffbe5d381b3583fb7db682'
  head 'https://github.com/wantedly/psdll.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'psdll'
  end
end
