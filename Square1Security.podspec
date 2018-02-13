Pod::Spec.new do |s|

  s.name         = "Square1Security"
  s.version      = "1.0.0"
  s.summary      = "Helpers for dealing with Security on iOS"
  s.description  = "This is a growing collection of Helpers to deal with Security on iOS. "
  s.homepage     = "http://EXAMPLE/Square1Security"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author       = "Square1"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/square1-io/Square1-iOS-Security", :tag => s.version }
  s.source_files  = "Source/**/*.swift"

end
