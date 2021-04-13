# Uncomment the next line to define a global platform for your project
 platform :ios, '11.0'
target 'MVVMDemo' do
  inhibit_all_warnings!
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'ReactiveObjC' ,:inhibit_warnings => true
  pod 'AFNetworking'
  pod 'YYCategories'
  pod 'SDAutoLayout' ,:inhibit_warnings => true
  pod 'SDWebImage', '~> 5.9.1' , :inhibit_warnings => true
  pod 'ChameleonFramework'
  pod 'MJRefresh'
#  pod 'IQKeyboardManager'
  pod 'MJExtension'
  pod 'YYModel', :inhibit_warnings => true
  pod 'Aspects' ,:inhibit_warnings => true
  pod 'Masonry' ,:inhibit_warnings => true
  pod 'Texture'

  # Pods for MVVMDemo

end
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
        end
    end
end
