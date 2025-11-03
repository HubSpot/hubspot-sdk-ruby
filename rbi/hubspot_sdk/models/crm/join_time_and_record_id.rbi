# typed: strong

module HubspotSDK
  module Models
    module Crm
      class JoinTimeAndRecordID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::JoinTimeAndRecordID,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :membership_timestamp

        sig { returns(String) }
        attr_accessor :record_id

        sig do
          params(membership_timestamp: Time, record_id: String).returns(
            T.attached_class
          )
        end
        def self.new(membership_timestamp:, record_id:)
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
