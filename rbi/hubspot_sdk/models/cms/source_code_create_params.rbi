# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class SourceCodeCreateParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::SourceCodeCreateParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :environment

        sig { returns(String) }
        attr_accessor :path

        sig { returns(T.nilable(HubSpotSDK::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: HubSpotSDK::Internal::FileInput).void }
        attr_writer :file

        sig do
          params(
            environment: String,
            path: String,
            file: HubSpotSDK::Internal::FileInput,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(environment:, path:, file: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              environment: String,
              path: String,
              file: HubSpotSDK::Internal::FileInput,
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
