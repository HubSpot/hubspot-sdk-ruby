# typed: strong

module HubspotSDK
  module Models
    module Automation
      class ComplianceIDs < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::ComplianceIDs,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Automation::ContactID]) }
        attr_accessor :contact_ids

        sig { returns(T::Array[Integer]) }
        attr_accessor :portal_ids

        sig { returns(T::Array[Integer]) }
        attr_accessor :user_ids

        sig { returns(T.nilable(String)) }
        attr_reader :no_contact_id_reason

        sig { params(no_contact_id_reason: String).void }
        attr_writer :no_contact_id_reason

        sig { returns(T.nilable(String)) }
        attr_reader :no_portal_id_reason

        sig { params(no_portal_id_reason: String).void }
        attr_writer :no_portal_id_reason

        sig { returns(T.nilable(String)) }
        attr_reader :no_user_id_reason

        sig { params(no_user_id_reason: String).void }
        attr_writer :no_user_id_reason

        sig do
          params(
            contact_ids: T::Array[HubspotSDK::Automation::ContactID::OrHash],
            portal_ids: T::Array[Integer],
            user_ids: T::Array[Integer],
            no_contact_id_reason: String,
            no_portal_id_reason: String,
            no_user_id_reason: String
          ).returns(T.attached_class)
        end
        def self.new(
          contact_ids:,
          portal_ids:,
          user_ids:,
          no_contact_id_reason: nil,
          no_portal_id_reason: nil,
          no_user_id_reason: nil
        )
        end

        sig do
          override.returns(
            {
              contact_ids: T::Array[HubspotSDK::Automation::ContactID],
              portal_ids: T::Array[Integer],
              user_ids: T::Array[Integer],
              no_contact_id_reason: String,
              no_portal_id_reason: String,
              no_user_id_reason: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
