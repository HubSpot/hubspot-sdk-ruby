# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      # @return [HubSpotSDK::Resources::Cms::AuditLogs]
      attr_reader :audit_logs

      # @return [HubSpotSDK::Resources::Cms::Blogs]
      attr_reader :blogs

      # @return [HubSpotSDK::Resources::Cms::Domains]
      attr_reader :domains

      # @return [HubSpotSDK::Resources::Cms::Hubdb]
      attr_reader :hubdb

      # @return [HubSpotSDK::Resources::Cms::MediaBridge]
      attr_reader :media_bridge

      # @return [HubSpotSDK::Resources::Cms::Pages]
      attr_reader :pages

      # @return [HubSpotSDK::Resources::Cms::SiteSearch]
      attr_reader :site_search

      # @return [HubSpotSDK::Resources::Cms::SourceCode]
      attr_reader :source_code

      # @return [HubSpotSDK::Resources::Cms::URLMappings]
      attr_reader :url_mappings

      # @return [HubSpotSDK::Resources::Cms::URLRedirects]
      attr_reader :url_redirects

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @audit_logs = HubSpotSDK::Resources::Cms::AuditLogs.new(client: client)
        @blogs = HubSpotSDK::Resources::Cms::Blogs.new(client: client)
        @domains = HubSpotSDK::Resources::Cms::Domains.new(client: client)
        @hubdb = HubSpotSDK::Resources::Cms::Hubdb.new(client: client)
        @media_bridge = HubSpotSDK::Resources::Cms::MediaBridge.new(client: client)
        @pages = HubSpotSDK::Resources::Cms::Pages.new(client: client)
        @site_search = HubSpotSDK::Resources::Cms::SiteSearch.new(client: client)
        @source_code = HubSpotSDK::Resources::Cms::SourceCode.new(client: client)
        @url_mappings = HubSpotSDK::Resources::Cms::URLMappings.new(client: client)
        @url_redirects = HubSpotSDK::Resources::Cms::URLRedirects.new(client: client)
      end
    end
  end
end
