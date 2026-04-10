# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class SourceCodeGetMetadataParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::SourceCodeGetMetadataParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :environment

        sig { returns(String) }
        attr_accessor :path

        sig { returns(T.nilable(String)) }
        attr_reader :properties

        sig { params(properties: String).void }
        attr_writer :properties

        sig do
          params(
            environment: String,
            path: String,
            properties: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(environment:, path:, properties: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              environment: String,
              path: String,
              properties: String,
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
