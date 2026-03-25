# typed: strong

module HubspotSDK
  module Models
    module Crm
      class RecordListMembership < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::RecordListMembership,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The timestamp when the record was first added to the list.
        sig { returns(Time) }
        attr_accessor :first_added_timestamp

        # The timestamp when the record was last added to the list.
        sig { returns(Time) }
        attr_accessor :last_added_timestamp

        # The unique identifier of the list.
        sig { returns(String) }
        attr_accessor :list_id

        # The version number of the list.
        sig { returns(Integer) }
        attr_accessor :list_version

        # Indicates whether the list is public.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_public_list

        sig { params(is_public_list: T::Boolean).void }
        attr_writer :is_public_list

        sig do
          params(
            first_added_timestamp: Time,
            last_added_timestamp: Time,
            list_id: String,
            list_version: Integer,
            is_public_list: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp when the record was first added to the list.
          first_added_timestamp:,
          # The timestamp when the record was last added to the list.
          last_added_timestamp:,
          # The unique identifier of the list.
          list_id:,
          # The version number of the list.
          list_version:,
          # Indicates whether the list is public.
          is_public_list: nil
        )
        end

        sig do
          override.returns(
            {
              first_added_timestamp: Time,
              last_added_timestamp: Time,
              list_id: String,
              list_version: Integer,
              is_public_list: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
