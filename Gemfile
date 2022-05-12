# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { github: 'decidim/decidim', branch: 'develop' }

# This is extracted from main decidim.gemspec
# gem "decidim-accountability", DECIDIM_VERSION
gem "decidim-admin", DECIDIM_VERSION
gem "decidim-api", DECIDIM_VERSION
gem "decidim-assemblies", DECIDIM_VERSION
gem "decidim-blogs", DECIDIM_VERSION
# gem "decidim-budgets", DECIDIM_VERSION
gem "decidim-comments", DECIDIM_VERSION
gem "decidim-core", DECIDIM_VERSION
# gem "decidim-debates", DECIDIM_VERSION
gem "decidim-forms", DECIDIM_VERSION
# gem "decidim-generators", DECIDIM_VERSION
gem "decidim-meetings", DECIDIM_VERSION
gem "decidim-pages", DECIDIM_VERSION
gem "decidim-participatory_processes", DECIDIM_VERSION
gem "decidim-proposals", DECIDIM_VERSION
# gem "decidim-sortitions", DECIDIM_VERSION
gem "decidim-surveys", DECIDIM_VERSION
gem "decidim-system", DECIDIM_VERSION
# gem "decidim-templates", DECIDIM_VERSION
gem "decidim-verifications", DECIDIM_VERSION

# gem "decidim-conferences", DECIDIM_VERSION
# gem "decidim-consultations", DECIDIM_VERSION
# gem "decidim-elections", DECIDIM_VERSION
# gem "decidim-initiatives", DECIDIM_VERSION
# EOF This is extracted from main decidim.gemspec

gem "bootsnap", "~> 1.3"

gem "puma", ">= 5.0.0"

gem "faker", "~> 2.14"

gem "wicked_pdf", "~> 2.1"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "brakeman"
  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 4.0"
end
