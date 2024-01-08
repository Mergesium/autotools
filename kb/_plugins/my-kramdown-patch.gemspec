# my-kramdown-patch.gemspec

Gem::Specification.new do |spec|
    spec.name          = 'my-kramdown-patch'
    spec.version       = '1.0.0'
    spec.authors       = ['Radu Hociung']
    spec.email         = ['support@Mergesium.com']
    spec.summary       = 'Patch for overriding basic_generate_id in kramdown'
    spec.description   = 'This gem provides a patch to override the basic_generate_id method in kramdown/converter'
    spec.homepage      = 'https://github.com/Mergesium/autotools'
    spec.license       = 'MIT'

    spec.files         = Dir['lib/**/*.rb']
    spec.require_paths = ['lib']

    # Add any additional dependencies here

    # spec.metadata['allowed_push_host'] = 'https://rubygems.org'
    # spec.required_ruby_version = '>= 2.6'

    # spec.add_development_dependency 'bundler', '~> 2.0'
    # spec.add_development_dependency 'rake', '~> 13.0'
    # spec.add_development_dependency 'rspec', '~> 3.0'
    # spec.add_development_dependency 'rubocop', '~> 0.90'
  end
