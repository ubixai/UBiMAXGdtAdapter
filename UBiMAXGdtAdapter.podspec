
Pod::Spec.new do |s|
  s.name             = 'UBiMAXGdtAdapter'
  s.version          = '4.15.10.1'
  s.summary          = 'UBiX聚合Sass SDK Gdt Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :git => 'https://github.com/ubixai/UBiMAXGdtAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXGdtAdapter.framework'
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }
  
  s.dependency 'UBiMAXAdSDK'
  s.dependency 'UBiMAXNative'
  s.dependency 'GDTMobSDK', '4.15.10'
end
