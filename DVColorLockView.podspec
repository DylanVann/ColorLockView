Pod::Spec.new do |s|
  s.name             = "DVColorLockLabel"
  s.version          = "0.1.0"
  s.summary          = "UITableViewCell highlighting does not change the color of DVColorLockViews."
  s.homepage         = "https://github.com/DylanVann/DVColorLockView"
  s.license          = 'MIT'
  s.author           = { "Dylan Vann" => "dylan.vann@gmail.com" }
  s.source           = { :git => "https://github.com/DylanVann/DVColorLockView.git", :tag => 'v0.1.0' }
  # s.social_media_url = 'https://twitter.com/atomarranger'
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'DVColorLockView.swift'
  s.frameworks = 'UIKit'
end
