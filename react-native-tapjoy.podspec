Pod::Spec.new do |s|
  s.name         = "RNTapjoy"
  s.version      = "0.14.3"
  s.license      = "MIT"
  s.homepage     = "https://github.com/reime005/react-native-tapjoy"
  s.authors      = { 'Marius Reimer' => 'reime005@gmail.com' }
  s.summary      = "A React Native module that allows you to use the native Tapjoy advertiser SDK."
  s.source       = { :git => "https://github.com/reime005/react-native-tapjoy" }
  s.source_files  = "ios/*.{h,m}"
  s.public_header_files = "ios/*.h"
  s.preserve_paths = 'README.md', 'package.json', '*.js'

  s.ios.frameworks = [
    'CFNetwork', 'Security', 'SystemConfiguration'
  ]

  s.platform     = :ios, "7.0"

  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => [
        "$(inherited)", 
        "${SRCROOT}/../../React/**", 
        "${SRCROOT}/../../node_modules/react-native/**"
      ].join(' '),
    'FRAMEWORK_SEARCH_PATHS' => [
        "$(inherited)", 
        "${PODS_ROOT}/TapjoySDK/**”,
      ].join(' '),
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }
end
