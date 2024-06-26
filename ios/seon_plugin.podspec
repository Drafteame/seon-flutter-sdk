#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint seon_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'seon_plugin'
  s.version          = '4.0.1'
  s.summary          = 'SEON Flutter Plugin Project.'
  s.description      = <<-DESC
SEON Anti Fraud Flutter Plugin
                       DESC
  s.homepage         = 'https://github.com/Drafteame'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Draftea' => 'info@draftea.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'SeonSDK', '~> 5.2.0'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
