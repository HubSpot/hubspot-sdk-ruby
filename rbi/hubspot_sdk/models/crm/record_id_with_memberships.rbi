# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class RecordIDWithMemberships < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::RecordIDWithMemberships,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :record_id

        sig { returns(T::Array[HubSpotSDK::Crm::RecordListMembership]) }
        attr_accessor :record_list_memberships

        sig do
          params(
            object_type_id: String,
            record_id: String,
            record_list_memberships:
              T::Array[HubSpotSDK::Crm::RecordListMembership::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(object_type_id:, record_id:, record_list_memberships:)
        end

        sig do
          override.returns(
            {
              object_type_id: String,
              record_id: String,
              record_list_memberships:
                T::Array[HubSpotSDK::Crm::RecordListMembership]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
