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

        sig { returns(String) }
        attr_accessor :list_id

        sig { returns(Integer) }
        attr_accessor :list_version

        sig { returns(T.nilable(Time)) }
        attr_reader :first_added_timestamp

        sig { params(first_added_timestamp: Time).void }
        attr_writer :first_added_timestamp

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_public_list

        sig { params(is_public_list: T::Boolean).void }
        attr_writer :is_public_list

        sig { returns(T.nilable(Time)) }
        attr_reader :last_added_timestamp

        sig { params(last_added_timestamp: Time).void }
        attr_writer :last_added_timestamp

        # Lists record is member of
        sig do
          params(
            list_id: String,
            list_version: Integer,
            first_added_timestamp: Time,
            is_public_list: T::Boolean,
            last_added_timestamp: Time
          ).returns(T.attached_class)
        end
        def self.new(
          list_id:,
          list_version:,
          first_added_timestamp: nil,
          is_public_list: nil,
          last_added_timestamp: nil
        )
        end

        sig do
          override.returns(
            {
              list_id: String,
              list_version: Integer,
              first_added_timestamp: Time,
              is_public_list: T::Boolean,
              last_added_timestamp: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
