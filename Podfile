# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'Reportedly' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Reportedly
  pod 'NimbleExtension', :git => 'https://github.com/nimblehq/NimbleExtension.git'
  pod 'R.swift'
  pod 'SwiftLint'
  pod 'Alamofire'
  pod 'SnapKit'
  
end

post_install do |pi|
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
      end
    end
end
