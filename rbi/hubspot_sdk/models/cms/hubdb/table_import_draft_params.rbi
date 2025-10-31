# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        class TableImportDraftParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Hubdb::TableImportDraftParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :config

          sig { params(config: String).void }
          attr_writer :config

          sig { returns(T.nilable(HubspotSDK::Internal::FileInput)) }
          attr_reader :file

          sig { params(file: HubspotSDK::Internal::FileInput).void }
          attr_writer :file

          sig do
            params(
              config: String,
              file: HubspotSDK::Internal::FileInput,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(config: nil, file: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                config: String,
                file: HubspotSDK::Internal::FileInput,
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
end
