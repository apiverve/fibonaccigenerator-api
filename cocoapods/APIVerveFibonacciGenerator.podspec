Pod::Spec.new do |s|
  s.name             = 'APIVerveFibonacciGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Fibonacci Generator computes Fibonacci numbers and sequences based on a target count or ceiling value.'
  s.description      = <<-'DESC'
Fibonacci Generator computes Fibonacci numbers and sequences based on a target count or ceiling value. Each response provides the generated sequence starting from any position, total sum, step ratios, and a golden ratio approximation.

This iOS/macOS SDK provides a convenient way to access the Fibonacci Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/fibonaccigenerator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/fibonaccigenerator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveFibonacciGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
