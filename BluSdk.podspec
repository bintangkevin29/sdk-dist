Pod::Spec.new do |s|
  s.name         = "BluSdk"
  s.version      = "1.0.1"
  s.summary      = "A brief description of BluSdk project."
  s.description  = <<-DESC
  An extended description of BluSdk project.
  DESC
  s.homepage     = "http://your.homepage/here"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2018
                 Permission is granted to...
                LICENSE
              }
  s.author             = { "$(git config user.name)" => "$(git config user.email)" }
  s.source       = { :git => "https://github.com/bintangkevin29/sdk-dist.git", :tag => "#{s.version}" }
  s.vendored_frameworks = "BluSdk.xcframework"
  s.platform = :ios
  s.swift_version = "4.2"
  s.ios.deployment_target  = '11.0'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end