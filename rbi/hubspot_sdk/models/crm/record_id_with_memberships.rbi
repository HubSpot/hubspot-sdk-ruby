# typed: strong

module HubspotSDK
  module Models
    module Crm
      class RecordIDWithMemberships < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::RecordIDWithMemberships,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :record_id

        sig { returns(T::Array[HubspotSDK::Crm::RecordListMembership]) }
        attr_accessor :record_list_memberships

        sig do
          params(
            object_type_id: String,
            record_id: String,
            record_list_memberships:
              T::Array[HubspotSDK::Crm::RecordListMembership::OrHash]
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
                T::Array[HubspotSDK::Crm::RecordListMembership]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
