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

        sig { returns(String) }
        attr_accessor :list_id

        sig { returns(Integer) }
        attr_accessor :list_version

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :processing_status

        sig { returns(String) }
        attr_accessor :processing_type

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :created_by_id

        sig { params(created_by_id: String).void }
        attr_writer :created_by_id

        sig { returns(T.nilable(Time)) }
        attr_reader :deleted_at

        sig { params(deleted_at: Time).void }
        attr_writer :deleted_at

        sig { returns(T.nilable(Time)) }
        attr_reader :filters_updated_at

        sig { params(filters_updated_at: Time).void }
        attr_writer :filters_updated_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

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
          list_id:,
          list_version:,
          name:,
          object_type_id:,
          processing_status:,
          processing_type:,
          created_at: nil,
          created_by_id: nil,
          deleted_at: nil,
          filters_updated_at: nil,
          size: nil,
          updated_at: nil,
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
