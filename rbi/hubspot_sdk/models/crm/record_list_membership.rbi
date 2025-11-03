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

        sig { returns(Time) }
        attr_accessor :first_added_timestamp

        sig { returns(Time) }
        attr_accessor :last_added_timestamp

        sig { returns(String) }
        attr_accessor :list_id

        sig { returns(Integer) }
        attr_accessor :list_version

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_public_list

        sig { params(is_public_list: T::Boolean).void }
        attr_writer :is_public_list

        # Lists record is member of
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
          first_added_timestamp:,
          last_added_timestamp:,
          list_id:,
          list_version:,
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
