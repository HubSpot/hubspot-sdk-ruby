# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        class TableGetDraftParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Hubdb::TableGetDraftParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :table_id_or_name

          # Whether to return only results that have been archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_foreign_ids

          sig { params(include_foreign_ids: T::Boolean).void }
          attr_writer :include_foreign_ids

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_get_localized_schema

          sig { params(is_get_localized_schema: T::Boolean).void }
          attr_writer :is_get_localized_schema

          sig do
            params(
              table_id_or_name: String,
              archived: T::Boolean,
              include_foreign_ids: T::Boolean,
              is_get_localized_schema: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            table_id_or_name:,
            # Whether to return only results that have been archived.
            archived: nil,
            include_foreign_ids: nil,
            is_get_localized_schema: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                table_id_or_name: String,
                archived: T::Boolean,
                include_foreign_ids: T::Boolean,
                is_get_localized_schema: T::Boolean,
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
