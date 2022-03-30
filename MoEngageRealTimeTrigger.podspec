
Pod::Spec.new do |s|

  s.name         = 'MoEngageRealTimeTrigger'
  s.version      = '1.1.0'
  s.summary      = 'MoEngage RTT Campaigns for iOS'
  s.description  = <<-DESC
                 Real-time device triggers are push notifications that are triggered instantly in the device whenever a trigger event Is tracked with the SDK trackEvent: 
                   DESC

  s.homepage     = 'https://www.moengage.com'
  s.documentation_url = 'https://developers.moengage.com'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'MobileDev' => 'mobiledevs@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '10.0'

  s.source       = { 
                    :git => 'https://github.com/moengage/MoEngage-iOS-RealTimeTrigger.git', 
                    :tag => 'rtt-' + s.version.to_s 
                    }
                    
  s.ios.vendored_frameworks = 'Frameworks/MoEngageRealTimeTrigger.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'ImageIO'
  s.dependency 'MoEngage-iOS-SDK', '>= 8.1.0', '< 8.2.0'
  s.dependency 'MoEngageRichNotification', '>= 6.1.0', '< 6.2.0'
end
