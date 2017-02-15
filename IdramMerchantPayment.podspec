#
# Be sure to run `pod lib lint IdramMerchantPayment.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "IdramMerchantPayment"
  s.version          = "0.0.5"
  s.summary          = "IdramMerchantPayment is used for making payments via Idram app"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
#  s.description      = <<-DESC
#                       DESC

  s.homepage         = "https://github.com/gagikmartirosyan/IdramMerchantPayment"
# s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Gagik Martirosyan" => "g_martirosyan@bitbucket.org" }
  s.source           = { :git => "https://github.com/gagikmartirosyan/IdramMerchantPayment.git", :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

#s.source_files = 'Pod/Classes/TestHeader.h'
  s.source_files = 'Classes', 'Pod/Classes/**/*.{h,m}'
  #s.resource_bundles = {
  #  'IdramMerchantPayment' => ['Pod/Assets/*.png']
  #}

# s.public_header_files = 'Pod/Classes/TestHeader.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
