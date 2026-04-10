# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        class RowCloneDraftParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Hubdb::RowCloneDraftParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :table_id_or_name

          sig { returns(String) }
          attr_accessor :row_id

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              table_id_or_name: String,
              row_id: String,
              name: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            table_id_or_name:,
            row_id:,
            name: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                table_id_or_name: String,
                row_id: String,
                name: String,
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
