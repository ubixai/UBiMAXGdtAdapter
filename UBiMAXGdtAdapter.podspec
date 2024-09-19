
Pod::Spec.new do |s|
  s.name             = 'UBiMAXGdtAdapter'
  s.version          = '4.15.00.0'
  s.summary          = 'UBiX聚合Sass SDK Gdt Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :http => 'https://m-now.ubixioe.com/package_file/mediation_sdk/IOS/2.4.1/iOS_UBiX_N.O.W.SDK_2.4.0.zip' }
  s.ios.deployment_target = '10.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXGdtAdapter.framework'
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }
  
  s.dependency 'UBiMAXAdSDK'
  s.dependency 'UBiMAXNative'
  s.dependency 'GDTMobSDK', '4.15.00'
end
