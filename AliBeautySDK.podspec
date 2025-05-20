
Pod::Spec.new do |s|
  s.name             = 'AliBeautySDK'
  s.version          = '1.0.0'  # 版本号，首次发布建议从 1.0.0 开始
  s.summary          = '阿里云直播推流与美颜 SDK 集成'
  s.description      = <<-DESC
                       集成了 AlivcLivePusher、AliyunQueenUIKit 和 queen 三个框架，
                       提供直播推流、美颜滤镜等功能。
                       DESC
  s.homepage         = 'https://github.com/catforpy/MyFrameworks.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'catforpy' => '815209544@qq.com' }  # 使用你的 GitHub 用户名和邮箱
  s.source           = { :git => 'git@github.com:catforpy/MyFrameworks.git', :tag => s.version.to_s }


  
  s.ios.deployment_target = '12.0'
  
  # 声明需要包含的 Frameworks
  s.vendored_frameworks = 'Frameworks/*.framework'

  s.frameworks = ['UIKit', 'Foundation', 'CoreGraphics', 'AVFoundation'] 

  s.pod_target_xcconfig = {
  # 'IPHONEOS_DEPLOYMENT_TARGET' => '12.0',  # 实际编译目标
  # 禁止构建模拟器（仅保留真机架构）
  # 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64',  # 排除所有模拟器架构
  # 'ARCHS[sdk=iphoneos*]' => 'arm64'                        # 强制使用真机架构
  # 允许自动检测架构（模拟器和真机）
    'ARCHS' => '-arch arm64 -arch x86_64',  # 通用架构配置
}

  # 如果有依赖库，添加在这里
  # s.dependency 'AFNetworking', '~> 4.0'  # 示例依赖，根据实际情况修改
  
  # 资源文件（如果有）
  # s.resource_bundles = {
  #   'AlivcQueenSDK' => ['Resources/*.bundle']
  # }
end


