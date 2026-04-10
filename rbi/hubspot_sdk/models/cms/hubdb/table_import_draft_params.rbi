# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        class TableImportDraftParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Hubdb::TableImportDraftParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :table_id_or_name

          sig { returns(T.nilable(String)) }
          attr_reader :config

          sig { params(config: String).void }
          attr_writer :config

          sig { returns(T.nilable(HubSpotSDK::Internal::FileInput)) }
          attr_reader :file

          sig { params(file: HubSpotSDK::Internal::FileInput).void }
          attr_writer :file

          sig do
            params(
              table_id_or_name: String,
              config: String,
              file: HubSpotSDK::Internal::FileInput,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            table_id_or_name:,
            config: nil,
            file: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                table_id_or_name: String,
                config: String,
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
end
