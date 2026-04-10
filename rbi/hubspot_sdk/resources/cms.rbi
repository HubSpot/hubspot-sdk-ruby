# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      sig { returns(HubSpotSDK::Resources::Cms::AuditLogs) }
      attr_reader :audit_logs

      sig { returns(HubSpotSDK::Resources::Cms::Blogs) }
      attr_reader :blogs

      sig { returns(HubSpotSDK::Resources::Cms::Domains) }
      attr_reader :domains

      sig { returns(HubSpotSDK::Resources::Cms::Hubdb) }
      attr_reader :hubdb

      sig { returns(HubSpotSDK::Resources::Cms::MediaBridge) }
      attr_reader :media_bridge

      sig { returns(HubSpotSDK::Resources::Cms::Pages) }
      attr_reader :pages

      sig { returns(HubSpotSDK::Resources::Cms::SiteSearch) }
      attr_reader :site_search

      sig { returns(HubSpotSDK::Resources::Cms::SourceCode) }
      attr_reader :source_code

      sig { returns(HubSpotSDK::Resources::Cms::URLMappings) }
      attr_reader :url_mappings

      sig { returns(HubSpotSDK::Resources::Cms::URLRedirects) }
      attr_reader :url_redirects

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
