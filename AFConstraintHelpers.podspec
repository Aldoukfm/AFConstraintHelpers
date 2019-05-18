Pod::Spec.new do |s|

  s.name         = "AFConstraintHelpers"
  s.version      = "0.0.1"
  s.summary      = "Constraint helper functions."

  s.description  = "Make layout constraints with simplified functions."

  s.homepage     = "http://EXAMPLE/AFConstraintHelpers"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Aldo Fuentes" => "aldo.k.fuentes@gmail.com" }

  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/Aldoukfm/AFConstraintHelpers.git", :tag => "#{s.version}" }

  s.source_files  = "AFConstraintHelpers/*.{swift}"

  # s.dependency "JSONKit", "~> 1.4"
  # s.resources = "RWPickFlavor/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

  s.swift_version = "5"

end
