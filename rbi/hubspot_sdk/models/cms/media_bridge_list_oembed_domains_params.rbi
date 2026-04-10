# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class MediaBridgeListOembedDomainsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::MediaBridgeListOembedDomainsParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :domain_portal_id

        sig { params(domain_portal_id: Integer).void }
        attr_writer :domain_portal_id

        sig do
          params(
            app_id: Integer,
            domain_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(app_id:, domain_portal_id: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              domain_portal_id: Integer,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
