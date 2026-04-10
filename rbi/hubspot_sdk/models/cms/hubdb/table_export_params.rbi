# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        class TableExportParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Hubdb::TableExportParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :table_id_or_name

          sig { returns(T.nilable(String)) }
          attr_reader :format_

          sig { params(format_: String).void }
          attr_writer :format_

          sig do
            params(
              table_id_or_name: String,
              format_: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(table_id_or_name:, format_: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                table_id_or_name: String,
                format_: String,
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
