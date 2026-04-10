# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class SiteSearchGetIndexedDataParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::SiteSearchGetIndexedDataParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :content_id

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            content_id: String,
            type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(content_id:, type: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              content_id: String,
              type: String,
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
