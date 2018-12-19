
Pod::Spec.new do |spec|
  spec.name         = "FlexLayout"
  spec.version      = "1.3.11"
  spec.summary      = "FlexLayout"
  spec.homepage     = "https://github.com/armcast/FlexLayout.git"
  spec.license      = "MIT license"
  spec.author       = { "Armando Castaneda" => "armando.castaneda.dev@gmail.com" }
  
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/armcast/FlexLayout.git", :branch => "master" }
  spec.source_files = "Sources/**/*.{swift,h,m,mm,cpp,c}"
  spec.public_header_files = "Sources/yoga/{Yoga,YGEnums,YGMacros}.h", "Sources/YogaKit/{UIView+Yoga,YGLayout}.h"
  spec.libraries    = 'c++'

  # Should match yoga_defs.bzl + BUCK configuration
  spec.compiler_flags = [
     '-fno-omit-frame-pointer',
     '-fexceptions',
     '-Wall',
     '-Werror',
     '-std=c++1y',
     '-fPIC'
  ]
end
