Pod::Spec.new do |s|
  s.name             = 'UBiMAXGdtAdapter'
  s.version          = '4.16.00.0'
  s.summary          = 'UBiX聚合Sass SDK Gdt Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'

  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :git => 'https://github.com/ubixai/UBiMAXGdtAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXGdtAdapter.xcframework'

  s.pod_target_xcconfig = {
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }

  s.dependency 'UBiMAXAdSDK'
  s.dependency 'UBiMAXNative'
  s.dependency 'GDTMobSDK', '4.16.00'
end
