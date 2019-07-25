class Psdll < Formula
  version '0.1.2'
  homepage 'https://github.com/wantedly/psdll'
  url "https://github.com/wantedly/psdll/releases/download/v0.1.2/psdll_darwin_amd64.zip"
  sha256 '56278e07e0ef46bf2e6eabb3cd803b7044bedaa389f93807e5144fdea468d62a'
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
