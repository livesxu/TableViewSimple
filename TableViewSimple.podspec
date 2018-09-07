
Pod::Spec.new do |s|

  s.name         = "TableViewSimple"
  s.version      = "0.1.0"
  s.summary      = "TableViewSimple"
  s.homepage     = "https://github.com/livesxu/TableViewSimple.git"
  s.license      = "MIT"
  s.author       = { "livesxu" => "livesxu@163.com" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/livesxu/TableViewSimple.git", :tag => s.version }
  s.source_files  = "TableViewSimple"
  s.frameworks    = 'UIKit'
  s.requires_arc  = true

end