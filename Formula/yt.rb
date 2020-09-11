class Yt < Formula
  desc "Fine-tuning the use of youtube-dl for audio and videophiles"

  homepage "https://github.com/ddelange/yt"
  url "https://github.com/ddelange/yt/archive/0.2.0.tar.gz"
  sha256 "28429cc416582558a5be3607345dd05fe67ba25fee5e46ebbe765d0d9ea7342d"

  head "https://github.com/ddelange/yt.git"

  bottle :unneeded

  depends_on "atomicparsley"
  depends_on "ffmpeg"
  depends_on "youtube-dl"
  
  def install
    system "bash", "./install.sh", "--prefix=#{prefix}", "yt"
  end

  test do
    system bin/"yt", "--help"
  end
end
