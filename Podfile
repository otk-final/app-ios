  require_relative '../rn/node_modules/react-native/scripts/react_native_pods'
  require_relative '../rn/node_modules/@react-native-community/cli-platform-ios/native_modules'


# require File.expand_path('../node_modules/react-native/scripts/react_native_pods', __dir__)
# require File.expand_path('../node_modules/@react-native-community/cli-platform-ios/native_modules', __dir__)



use_frameworks!


# Uncomment the next line to define a global platform for your project
platform :ios, '12.4'

target 'ios' do
  # Comment the next line if you don't want to use dynamic frameworks

  # Pods for ios
  # config = use_native_modules!
  
  # to enable hermes on iOS, change `false` to `true` and then install pods
  # use_react_native!(:path => config[:reactNativePath],:hermes_enabled => false)
  use_react_native!(:path => "../rn/node_modules/react-native",:hermes_enabled => false)
  
  post_install do |installer|
    react_native_post_install(installer)
  end

end
