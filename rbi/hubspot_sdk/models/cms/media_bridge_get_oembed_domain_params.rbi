# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeGetOembedDomainParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgeGetOembedDomainParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :o_embed_domain_id

        sig do
          params(
            app_id: String,
            o_embed_domain_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(app_id:, o_embed_domain_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              app_id: String,
              o_embed_domain_id: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
