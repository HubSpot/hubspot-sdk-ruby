# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicList < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicList,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An internal ID of the list
        sig { returns(String) }
        attr_accessor :list_id

        # A number that represents a version of the list
        sig { returns(Integer) }
        attr_accessor :list_version

        # The name of the list
        sig { returns(String) }
        attr_accessor :name

        # The internal ID of the object type of the list
        sig { returns(String) }
        attr_accessor :object_type_id

        # Represents the current processing status of the list
        sig { returns(String) }
        attr_accessor :processing_status

        # Processing type of the list
        sig { returns(String) }
        attr_accessor :processing_type

        # Timestamp of the creation of the list
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The ID of the user who created the list
        sig { returns(T.nilable(String)) }
        attr_reader :created_by_id

        sig { params(created_by_id: String).void }
        attr_writer :created_by_id

        # Timestamp of the deletion of the list
        sig { returns(T.nilable(Time)) }
        attr_reader :deleted_at

        sig { params(deleted_at: Time).void }
        attr_writer :deleted_at

        # Timestamp of the last update of the list filters
        sig { returns(T.nilable(Time)) }
        attr_reader :filters_updated_at

        sig { params(filters_updated_at: Time).void }
        attr_writer :filters_updated_at

        # The size of the result list
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Timestamp of the last update of the list
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # The ID of the user who last updated the list
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
            created_at: Time,
            created_by_id: String,
            deleted_at: Time,
            filters_updated_at: Time,
            size: Integer,
            updated_at: Time,
            updated_by_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # An internal ID of the list
          list_id:,
          # A number that represents a version of the list
          list_version:,
          # The name of the list
          name:,
          # The internal ID of the object type of the list
          object_type_id:,
          # Represents the current processing status of the list
          processing_status:,
          # Processing type of the list
          processing_type:,
          # Timestamp of the creation of the list
          created_at: nil,
          # The ID of the user who created the list
          created_by_id: nil,
          # Timestamp of the deletion of the list
          deleted_at: nil,
          # Timestamp of the last update of the list filters
          filters_updated_at: nil,
          # The size of the result list
          size: nil,
          # Timestamp of the last update of the list
          updated_at: nil,
          # The ID of the user who last updated the list
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
              created_at: Time,
              created_by_id: String,
              deleted_at: Time,
              filters_updated_at: Time,
              size: Integer,
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
