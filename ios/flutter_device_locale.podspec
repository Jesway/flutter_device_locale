#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_device_locale.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_device_locale'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin for retrieving the device locale information.'
  s.description      = <<-DESC
A Flutter plugin for retrieving the device locale information.
                       DESC
  s.homepage         = 'https://github.com/bratan/flutter_device_locale'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Florin Bratan' => 'florin@leadcode.dev' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
