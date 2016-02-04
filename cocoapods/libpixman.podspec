Pod::Spec.new do |s|
  s.name         = "libpixman"
  s.version      = "0.32.4"
  s.summary      = "Pixman library."
  s.homepage     = "https://github.com/igagis/pixman"
  s.license      = 'https://raw.githubusercontent.com/igagis/pixman/master/COPYING'
  s.author       = { "Pixman authors" => "pixman.org" }
  s.platform     = :ios, "7.0"

  s.compiler_flags = '-DPIXMAN_NO_TLS -DHAVE_CONFIG_H'
  
  s.source = { :git => "https://github.com/igagis/pixman.git", :tag => s.version }

  s.source_files  = "pixman/*.{h}", "COPKG/*.{h}", "pixman/{pixman.c,pixman-access.c,pixman-access-accessors.c,pixman-bits-image.c,pixman-combine32.c,pixman-combine-float.c,pixman-conical-gradient.c,pixman-filter.c,pixman-x86.c,pixman-mips.c,pixman-arm.c,pixman-ppc.c,pixman-edge.c,pixman-edge-accessors.c,pixman-fast-path.c,pixman-glyph.c,pixman-general.c,pixman-gradient-walker.c,pixman-image.c,pixman-implementation.c,pixman-linear-gradient.c,pixman-matrix.c,pixman-noop.c,pixman-radial-gradient.c,pixman-region16.c,pixman-region32.c,pixman-solid-fill.c,pixman-timer.c,pixman-trap.c,pixman-utils.c}"
end
