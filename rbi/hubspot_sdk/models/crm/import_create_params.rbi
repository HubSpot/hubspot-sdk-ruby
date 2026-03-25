# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ImportCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ImportCreateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(HubspotSDK::Internal::FileInput)) }
        attr_reader :files

        sig { params(files: HubspotSDK::Internal::FileInput).void }
        attr_writer :files

        sig { returns(T.nilable(String)) }
        attr_reader :import_request

        sig { params(import_request: String).void }
        attr_writer :import_request

        sig do
          params(
            files: HubspotSDK::Internal::FileInput,
            import_request: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(files: nil, import_request: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              files: HubspotSDK::Internal::FileInput,
              import_request: String,
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
