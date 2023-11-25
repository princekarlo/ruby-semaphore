require_relative 'lib/semaphore/version'

Gem::Specification.new do |spec|
  spec.name        = 'ruby-semaphore'
  spec.version     = Semaphore::VERSION
  spec.authors     = ['Prince Karlo']
  spec.email       = ['77134068+princekarlo-bootyard@users.noreply.github.com']
  spec.homepage    = 'https://bootyard.com'
  spec.summary     = 'Ruby API Wrapper for https://semaphore.co/'
  spec.description = 'This gem provides a simple and intuitive Ruby API wrapper for interacting with the Semaphore API. With this gem, you can easily send messages, manage accounts, and perform other operations using the Semaphore API.'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata['allowed_push_host'] = 'http://example.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://bootyard.com'
  spec.metadata['changelog_uri'] = 'https://bootyard.com'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'faraday', '>= 2.7.12'
end
