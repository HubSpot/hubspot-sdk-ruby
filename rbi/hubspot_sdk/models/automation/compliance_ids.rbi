# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class ComplianceIDs < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::ComplianceIDs,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Automation::ContactID]) }
        attr_accessor :contact_ids

        sig { returns(T::Array[Integer]) }
        attr_accessor :portal_ids

        sig { returns(T::Array[Integer]) }
        attr_accessor :user_ids

        # The reason why no contact ID is available.
        sig { returns(T.nilable(String)) }
        attr_reader :no_contact_id_reason

        sig { params(no_contact_id_reason: String).void }
        attr_writer :no_contact_id_reason

        # The reason why no portal ID is available.
        sig { returns(T.nilable(String)) }
        attr_reader :no_portal_id_reason

        sig { params(no_portal_id_reason: String).void }
        attr_writer :no_portal_id_reason

        # The reason why no user ID is available.
        sig { returns(T.nilable(String)) }
        attr_reader :no_user_id_reason

        sig { params(no_user_id_reason: String).void }
        attr_writer :no_user_id_reason

        sig do
          params(
            contact_ids: T::Array[HubSpotSDK::Automation::ContactID::OrHash],
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
          # The reason why no contact ID is available.
          no_contact_id_reason: nil,
          # The reason why no portal ID is available.
          no_portal_id_reason: nil,
          # The reason why no user ID is available.
          no_user_id_reason: nil
        )
        end

        sig do
          override.returns(
            {
              contact_ids: T::Array[HubSpotSDK::Automation::ContactID],
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
