Pod::Spec.new do |s|
  s.name     = 'yajl'
  s.version  = '2.1.0'
  s.license  = 'ISC'
  s.summary  = 'Yet Another JSON Library - A Portable JSON parsing and serialization library in ANSI C.'
  s.homepage = 'http://lloyd.github.com/yajl/'
  s.authors  = {'Lloyd Hilaiel' => 'lloyd@hilaiel.com'}
  s.source   = { :git => 'https://github.com/adanmayer/yajl.git', :tag => '2.1.0' }
  s.source_files = 'src/*.{h,c}', 'build/yajl-2.1.1/include/yajl'
  s.preserve_paths = '**/*'
  s.prepare_command = <<-CMD
                        ./configure
                        mv COPYING LICENSE
                    CMD
end