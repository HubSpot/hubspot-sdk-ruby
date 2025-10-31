# typed: strong

module HubspotSDK
  module Resources
    class Cms
      sig { returns(HubspotSDK::Resources::Cms::AuditLogs) }
      attr_reader :audit_logs

      sig { returns(HubspotSDK::Resources::Cms::Blogs) }
      attr_reader :blogs

      sig { returns(HubspotSDK::Resources::Cms::Domains) }
      attr_reader :domains

      sig { returns(HubspotSDK::Resources::Cms::Hubdb) }
      attr_reader :hubdb

      sig { returns(HubspotSDK::Resources::Cms::MediaBridge) }
      attr_reader :media_bridge

      sig { returns(HubspotSDK::Resources::Cms::Pages) }
      attr_reader :pages

      sig { returns(HubspotSDK::Resources::Cms::SiteSearch) }
      attr_reader :site_search

      sig { returns(HubspotSDK::Resources::Cms::SourceCode) }
      attr_reader :source_code

      sig { returns(HubspotSDK::Resources::Cms::URLRedirects) }
      attr_reader :url_redirects

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
