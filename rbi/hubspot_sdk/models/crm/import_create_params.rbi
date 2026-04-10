# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ImportCreateParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ImportCreateParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(HubSpotSDK::Internal::FileInput)) }
        attr_reader :files

        sig { params(files: HubSpotSDK::Internal::FileInput).void }
        attr_writer :files

        sig { returns(T.nilable(String)) }
        attr_reader :import_request

        sig { params(import_request: String).void }
        attr_writer :import_request

        sig do
          params(
            files: HubSpotSDK::Internal::FileInput,
            import_request: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(files: nil, import_request: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              files: HubSpotSDK::Internal::FileInput,
              import_request: String,
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
