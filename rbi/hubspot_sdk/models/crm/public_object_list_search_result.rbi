# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicObjectListSearchResult < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicObjectListSearchResult,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The **ILS ID** of the list.
        sig { returns(String) }
        attr_accessor :list_id

        # The version of the list.
        sig { returns(Integer) }
        attr_accessor :list_version

        # The name of the list.
        sig { returns(String) }
        attr_accessor :name

        # The object type of the list.
        sig { returns(String) }
        attr_accessor :object_type_id

        # The processing status of the list.
        sig { returns(String) }
        attr_accessor :processing_status

        # The processing type of the list.
        sig { returns(String) }
        attr_accessor :processing_type

        # The name and value of any additional properties that exist for this list and
        # that were included in the search request.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :additional_filter_properties

        sig do
          params(additional_filter_properties: T::Hash[Symbol, String]).void
        end
        attr_writer :additional_filter_properties

        # The time when the list was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The ID of the user that created the list.
        sig { returns(T.nilable(String)) }
        attr_reader :created_by_id

        sig { params(created_by_id: String).void }
        attr_writer :created_by_id

        # The time when the list was deleted.
        sig { returns(T.nilable(Time)) }
        attr_reader :deleted_at

        sig { params(deleted_at: Time).void }
        attr_writer :deleted_at

        # The time when the filters for this list were last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :filters_updated_at

        sig { params(filters_updated_at: Time).void }
        attr_writer :filters_updated_at

        # The time the list was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # The ID of the user that last updated the list.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_by_id

        sig { params(updated_by_id: String).void }
        attr_writer :updated_by_id

        sig do
          params(
            list_id: String,
            list_version: Integer,
            name: String,
            object_type_id: String,
            processing_status: String,
            processing_type: String,
            additional_filter_properties: T::Hash[Symbol, String],
            created_at: Time,
            created_by_id: String,
            deleted_at: Time,
            filters_updated_at: Time,
            updated_at: Time,
            updated_by_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The **ILS ID** of the list.
          list_id:,
          # The version of the list.
          list_version:,
          # The name of the list.
          name:,
          # The object type of the list.
          object_type_id:,
          # The processing status of the list.
          processing_status:,
          # The processing type of the list.
          processing_type:,
          # The name and value of any additional properties that exist for this list and
          # that were included in the search request.
          additional_filter_properties: nil,
          # The time when the list was created.
          created_at: nil,
          # The ID of the user that created the list.
          created_by_id: nil,
          # The time when the list was deleted.
          deleted_at: nil,
          # The time when the filters for this list were last updated.
          filters_updated_at: nil,
          # The time the list was last updated.
          updated_at: nil,
          # The ID of the user that last updated the list.
          updated_by_id: nil
        )
        end

        sig do
          override.returns(
            {
              list_id: String,
              list_version: Integer,
              name: String,
              object_type_id: String,
              processing_status: String,
              processing_type: String,
              additional_filter_properties: T::Hash[Symbol, String],
              created_at: Time,
              created_by_id: String,
              deleted_at: Time,
              filters_updated_at: Time,
              updated_at: Time,
              updated_by_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
