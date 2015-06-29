class UrQt < Formula
  homepage "https://github.com/l-modolo/UrQt"
  head "https://github.com/l-modolo/UrQt.git", :using => :git
 


  def install
    system "cd UrQt"	
    system "make"
    bin.install "UrQt"
    doc.install "README.md", "DOCUMENTATION"	
  end  	
end
