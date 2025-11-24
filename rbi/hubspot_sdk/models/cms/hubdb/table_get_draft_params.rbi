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

          # Set this to `true` to return an archived table. Defaults to `false`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # Set this to `true` to populate foreign ID values in the result.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_foreign_ids

          sig { params(include_foreign_ids: T::Boolean).void }
          attr_writer :include_foreign_ids

          # Indicates whether to retrieve the localized schema for the table.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_get_localized_schema

          sig { params(is_get_localized_schema: T::Boolean).void }
          attr_writer :is_get_localized_schema

          sig do
            params(
              archived: T::Boolean,
              include_foreign_ids: T::Boolean,
              is_get_localized_schema: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Set this to `true` to return an archived table. Defaults to `false`.
            archived: nil,
            # Set this to `true` to populate foreign ID values in the result.
            include_foreign_ids: nil,
            # Indicates whether to retrieve the localized schema for the table.
            is_get_localized_schema: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
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
