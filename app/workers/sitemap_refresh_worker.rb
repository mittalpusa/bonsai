require 'sitemap_generator'

#
# Worker that refreshes this application's sitemap once a day at midnight. Uses
# Sidetiq to schedule the job.
#
class SitemapRefreshWorker < ApplicationWorker

 # include Sidetiq::Schedulable

  # recurrence { daily }

  #
  # Refresh the sitemap and ping search engines using the SitemapGenerator
  # library.
  #
  # Essentially runs the tasks that +rake sitemap:refresh+ runs.
  #
  # @example:
  #   SitemapResfreshWorker.new.perform
  #
  def perform
    SitemapGenerator::Interpreter.run
    SitemapGenerator::Sitemap.ping_search_engines
  end
end
