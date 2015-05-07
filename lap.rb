class Lap < Formula
  url "http://www.cbcb.umd.edu/~cmhill/files/lap_release_1.1.zip"
  version "1.1"
  homepage "http://assembly-eval.sourceforge.net/"

  depends_on "python"
  depends_on "biopython"
  depends_on "bowtie2"

  def install    
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python2.7/site-packages"
    %w[aligner].each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end
    system "cd dynamic"
    bin.install %w[mean mprobability sample stitch] #Binaries are for a linux 64bit operating system.
  end
end
