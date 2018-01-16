
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'total_price_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = 'total_price_calculator'
  spec.version       = TotalPriceCalculator::VERSION
  spec.authors       = ['Kyle Boss']
  spec.email         = ['kyle@kyleboss.com']

  spec.summary       = "Calculates the total cost of all the items in a user's shopping cart."
  spec.description   = "Owners of any e-commerce website want to make sure that all prices are calculated correctly.\
 Shoppers of any e-commerce website want the best deals! Why not combine these two desires? This is exactly what the \
 Total Price Calculator aims to achieve. This gem automatically redeems discounts on the shopper's behalf & \
 calculates the total cost of items in a shopper's shopping cart"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
