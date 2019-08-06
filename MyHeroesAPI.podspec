#
# Be sure to run `pod lib lint MyHeroesAPI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyHeroesAPI'
  s.version          = '0.1.4'
  s.summary          = 'API to consume information about Marvel Heroes'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
API to fetch information about Marvel Heroes
                       DESC

  s.homepage         = 'https://github.com/gilson-gil/MyHeroesAPI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gilson-gil' => 'gilson.gil@me.com' }
  s.source           = { :git => 'https://github.com/gilson-gil/MyHeroesAPI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.swift_versions = '4.2'

  s.source_files = 'MyHeroesAPI/Classes/**/*'
end
