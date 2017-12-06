
Pod::Spec.new do |s|

  s.name         = "HSpeakStringButton"
  s.version      = "0.0.1"
  s.summary      = "一个用于播放文字的按钮"

  s.description  = <<-DESC
一个用于播放文字的按钮
                   DESC

  s.homepage     = "https://github.com/hare27/HSpeakStringButton"

  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "hare27" => "hare27@icloud.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/hare27/HSpeakStringButton.git", :tag => "#{s.version}" }

  s.source_files  = "HSpeakStringButton", "a/HSpeakStringButton/*.{h,m,a,bundle}"

end
