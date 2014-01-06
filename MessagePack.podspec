Pod::Spec.new do |s|

  s.name         = "MessagePack"
  s.version      = "0.0.1"
  s.summary      = "MessagePack"

  s.description  = <<-DESC
  					MessagePack
                   DESC

  s.homepage     = "http://github.com/dictav/msgpack-objectivec"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "dictav" => "dictav@gmail.com" }
  s.social_media_url = "http://twitter.com/dictav"

  s.source       = { :git => "https://github.com/dictav/msgpack-objectivec.git", :tag => "0.0.1", :submodules => true }
  s.source_files  = ['MessagePack/*.{h,m}', 'msgpack_src/*/*']

  s.requires_arc  = true
end
