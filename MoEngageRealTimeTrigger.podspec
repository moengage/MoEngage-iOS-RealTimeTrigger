
Pod::Spec.new do |s|

  s.name         = 'MoEngageRealTimeTrigger'
  s.version      = '2.16.1'
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
  s.ios.deployment_target = '11.0'

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-RealTimeTrigger/releases/download/#{s.version}/MoEngageRealTimeTrigger.xcframework.zip", 
    :sha256 => '015fef34161b6f6b0bc99c18ea65d4368d06aa9b39e3a6c41fe904f07263f04d'
  }
                    
  s.ios.vendored_frameworks = 'MoEngageRealTimeTrigger.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'ImageIO'
  s.dependency 'MoEngage-iOS-SDK', '>= 9.17.0', '< 9.18.0'
  s.dependency 'MoEngageRichNotification', '>= 7.16.0', '< 7.17.0'
end
