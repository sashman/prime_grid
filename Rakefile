require "bundler/gem_tasks"
require "prime_grid"

namespace :prime_grid do

  desc 'Render console view given a prime count'
  task :console, :prime_count do |t, args|
    include PrimeGrid

    render_console args.prime_count

  end

end