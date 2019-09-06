# frozen_string_literal: true

if Rails.env.development? || Rails.env.test?
  require 'rubocop/rake_task'

  RuboCop::RakeTask.new

  namespace :dev do
    desc 'Run rubocop auto correction'
    task rubocopa: :environment do
      puts "\n----------------------------------------"
      puts 'Running rubocop auto correct...'
      sh 'rubocop -a'
    end
  end
end
