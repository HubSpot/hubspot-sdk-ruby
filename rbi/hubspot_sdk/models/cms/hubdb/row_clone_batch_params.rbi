# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        class RowCloneBatchParams < HubSpotSDK::Models::Cms::BatchInputHubDBTableRowBatchCloneRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Hubdb::RowCloneBatchParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :table_id_or_name

          sig do
            params(
              table_id_or_name: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(table_id_or_name:, request_options: {})
          end

          sig do
            override.returns(
              {
                table_id_or_name: String,
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
