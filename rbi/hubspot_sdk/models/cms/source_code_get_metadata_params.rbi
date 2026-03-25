# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SourceCodeGetMetadataParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::SourceCodeGetMetadataParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :environment

        sig { returns(String) }
        attr_accessor :path

        # A comma-separated list of specific metadata properties to include in the
        # response.
        sig { returns(T.nilable(String)) }
        attr_reader :properties

        sig { params(properties: String).void }
        attr_writer :properties

        sig do
          params(
            environment: String,
            path: String,
            properties: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          environment:,
          path:,
          # A comma-separated list of specific metadata properties to include in the
          # response.
          properties: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              environment: String,
              path: String,
              properties: String,
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
