Pod::Spec.new do |s|

  s.name         = "Moscapsule"
  s.version      = "0.6.4"
  s.summary      = "MQTT Client for iOS written in Swift"
  s.description  = <<-DESC
                   MQTT Client for iOS written in Swift.
                   This framework is implemented as a wrapper of Mosquitto library
                   and covers almost all mosquitto features.
                   DESC
  s.homepage     = "https://github.com/flightonary/Moscapsule"

  s.license      = "MIT"
  s.author       = { "tonary" => "nekomelife@gmail.com" }

  s.platform = :ios
  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/flightonary/Moscapsule.git", :tag => s.version }

  s.source_files = "Moscapsule/*.{h,m,swift}", "mosquitto/lib/*.{h,c}", "mosquitto/*.{h}", "mosquitto/deps/*.{h,c}", "mosquitto/include/*.{h,c}"
  s.public_header_files = "Moscapsule/Moscapsule.h", "Moscapsule/MosquittoCallbackBridge.h", "mosquitto/include/mosquitto.h"
  s.dependency 'OpenSSL-Universal', '1.1.180'
  s.frameworks = "OpenSSL"
  s.requires_arc = true
  s.xcconfig     = {
    'SWIFT_VERSION' => '4.0',
    'OTHER_CFLAGS' => '-DWITH_THREADING -DWITH_TLS -DWITH_TLS_PSK',
    'FRAMEWORK_SEARCH_PATHS' =>  [ '"${PODS_XCFRAMEWORKS_BUILD_DIR}/OpenSSL"'] ,
    'HEADER_SEARCH_PATHS' => ['"${PODS_XCFRAMEWORKS_BUILD_DIR}/OpenSSL"']
  }

end
