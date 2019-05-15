class Subee < Formula
  version '0.4.0'
  homepage 'https://github.com/wantedly/subee'
  url "https://github.com/wantedly/subee/releases/download/v0.4.0/subee_darwin_amd64.zip"
  sha256 '25e9df568cfc13bb2f5214f37229d8c8c18e6144ca9f48df579c3684b5b59e04'
  head 'https://github.com/wantedly/subee.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'subee'
  end
end
