Pod::Spec.new do |s|
  s.name = 'Network'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '20220523'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v20220523' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'Network Swift SDK'
  s.source_files = '//**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
