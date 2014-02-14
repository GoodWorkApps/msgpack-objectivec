Pod::Spec.new do |s|
  s.name         = "MessagePack"
  s.version      = "0.0.2"
  s.summary      = "MessagePack"

  s.description  = <<-DESC
  MessagePack with some additions to make push packing
                   DESC

  s.homepage     = "http://github.com/GoodWorkApps/msgpack-objectivec"
  s.license      = { :type => 'Apache', :file => 'readme.md' }
  s.author             = { "egv" => "g@goodworkapps.com" }
  s.social_media_url = "http://twitter.com/gevstratov"

  s.source       = { :git => "https://github.com/GoodWorkApps/msgpack-objectivec.git", :tag => "0.1.0" }
  s.source_files  = ['MessagePack/*.{h,m}', 'msgpack_src/*', 'msgpack_src/msgpack/*']

  s.header_mappings_dir = 'msgpack'
  s.xcconfig = {
  	'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/MessagePack/msgpack_src"'
  }

  s.requires_arc  = true

end
