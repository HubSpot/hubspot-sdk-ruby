# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      # @return [HubspotSDK::Resources::Cms::AuditLogs]
      attr_reader :audit_logs

      # @return [HubspotSDK::Resources::Cms::Blogs]
      attr_reader :blogs

      # @return [HubspotSDK::Resources::Cms::Domains]
      attr_reader :domains

      # @return [HubspotSDK::Resources::Cms::Hubdb]
      attr_reader :hubdb

      # @return [HubspotSDK::Resources::Cms::MediaBridge]
      attr_reader :media_bridge

      # @return [HubspotSDK::Resources::Cms::Pages]
      attr_reader :pages

      # @return [HubspotSDK::Resources::Cms::SiteSearch]
      attr_reader :site_search

      # @return [HubspotSDK::Resources::Cms::SourceCode]
      attr_reader :source_code

      # @return [HubspotSDK::Resources::Cms::URLRedirects]
      attr_reader :url_redirects

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @audit_logs = HubspotSDK::Resources::Cms::AuditLogs.new(client: client)
        @blogs = HubspotSDK::Resources::Cms::Blogs.new(client: client)
        @domains = HubspotSDK::Resources::Cms::Domains.new(client: client)
        @hubdb = HubspotSDK::Resources::Cms::Hubdb.new(client: client)
        @media_bridge = HubspotSDK::Resources::Cms::MediaBridge.new(client: client)
        @pages = HubspotSDK::Resources::Cms::Pages.new(client: client)
        @site_search = HubspotSDK::Resources::Cms::SiteSearch.new(client: client)
        @source_code = HubspotSDK::Resources::Cms::SourceCode.new(client: client)
        @url_redirects = HubspotSDK::Resources::Cms::URLRedirects.new(client: client)
      end
    end
  end
end
