Pod::Spec.new do |s|
  s.name         = "libpixman"
  s.version      = "0.32.4"
  s.summary      = "Pixman library."
  s.homepage     = "https://github.com/igagis/pixman"
  s.license      = 'https://raw.githubusercontent.com/igagis/pixman/master/COPYING'
  s.author       = { "Pixman authors" => "pixman.org" }
  s.platform     = :ios, "7.0"
  
  s.source = { :git => "https://github.com/igagis/pixman.git", :tag => s.version }

  s.source_files  = "pixman/*.{h}", "COPKG/*.{h}", "pixman/{}"
end
