Pod::Spec.new do |s|
  s.name         = "MessagePack"
  s.version      = "0.0.2"
  s.summary      = "MessagePack"

  s.description  = <<-DESC
  					MessagePack
                   DESC

  s.homepage     = "http://github.com/dictav/msgpack-objectivec"
  s.license      = { :type => 'Apache', :file => 'readme.md' }
  s.author             = { "dictav" => "dictav@gmail.com" }
  s.social_media_url = "http://twitter.com/dictav"

  s.source       = { :git => "https://github.com/dictav/msgpack-objectivec.git", :tag => "0.0.2" }
  s.source_files  = ['MessagePack/*.{h,m}', 'msgpack_src/*', 'msgpack_src/msgpack/*']

  s.header_mappings_dir = 'msgpack'
  s.xcconfig = {
  	'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/MessagePack/msgpack_src"'
  }
  s.requires_arc  = true
  end
