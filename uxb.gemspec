# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "uxb/version"

Gem::Specification.new do |spec|
  spec.name          = "uxb"
  spec.version       = Uxb::VERSION
  spec.authors       = ["Ted Frohlich"]
  spec.email         = ["ttf10@case.edu"]

  spec.summary       = %q{The UXB (Universal eXtreme Bus) is a new (fictitious) standard to connect peripherals to computers.}
  spec.description   = %q{It was originally planned as a replacement for multiple existing standards, such as USB or HDMI. In the planning stage, a new feature was introduced: a single UXB device can have multiple ports so that the same device can be connected to multiple computers. For example, a printer can be plugged into multiple nearby computers, all of which would be able to print. In addition, a Webcam can be connected to several computers, enabling multiple users to access the same video feed. Furthermore, multiple ports introduce redundancy and consequently better fault tolerance. For example, if a peripheral is connected twice to a computer, then the device can continue to operate even if a cable or an UXB hub fails. Although multiple device ports seemed a great idea, they caused no end of aggravation to the UXB programmer (you!).}
  spec.homepage      = "https://github.com/CWRU-SoftwareCraftsmanship-ttf10/uxb-rb"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
