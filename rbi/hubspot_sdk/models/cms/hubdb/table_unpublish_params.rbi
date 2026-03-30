# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        class TableUnpublishParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Hubdb::TableUnpublishParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :table_id_or_name

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_foreign_ids

          sig { params(include_foreign_ids: T::Boolean).void }
          attr_writer :include_foreign_ids

          sig do
            params(
              table_id_or_name: String,
              include_foreign_ids: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            table_id_or_name:,
            include_foreign_ids: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                table_id_or_name: String,
                include_foreign_ids: T::Boolean,
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
