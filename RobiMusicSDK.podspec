#
#  Be sure to run `pod spec lint MYBLMusicSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
    s.name              = 'RobiMusicSDK' # Name for your pod
    s.version           = '0.0.3'
    s.summary           = 'Sample Spec'
    s.homepage          = 'https://github.com/shadhin-music/MYRobiMusicSDK-iOS'

    s.author            = { 'MD Azizur Rahman' => 'azizur.gakk@gmail.com' }
    s.license      = { :type => "MIT", :file => "LICENCE" }

    s.platform          = :ios
    # change the source location
    s.source            = { :git => "https://github.com/shadhin-music/MYRobiMusicSDK-iOS.git", :tag => "#{s.version}" }
    s.ios.deployment_target = '11.0'
    s.swift_version = "5.7"
    s.ios.vendored_frameworks = 'Shadhin_Robi.xcframework' # Your XCFramework
    s.requires_arc = true
end


