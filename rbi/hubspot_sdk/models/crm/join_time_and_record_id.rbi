# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class JoinTimeAndRecordID < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::JoinTimeAndRecordID,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The date and time when the record was added to the list.
        sig { returns(Time) }
        attr_accessor :membership_timestamp

        # The unique identifier of the record.
        sig { returns(String) }
        attr_accessor :record_id

        sig do
          params(membership_timestamp: Time, record_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The date and time when the record was added to the list.
          membership_timestamp:,
          # The unique identifier of the record.
          record_id:
        )
        end

        sig do
          override.returns({ membership_timestamp: Time, record_id: String })
        end
        def to_hash
        end
      end
    end
  end
end
