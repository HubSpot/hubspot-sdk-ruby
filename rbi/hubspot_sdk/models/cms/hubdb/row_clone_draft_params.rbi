# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        class RowCloneDraftParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Hubdb::RowCloneDraftParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :table_id_or_name

          # The name for the cloned row.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              table_id_or_name: String,
              name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            table_id_or_name:,
            # The name for the cloned row.
            name: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                table_id_or_name: String,
                name: String,
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
