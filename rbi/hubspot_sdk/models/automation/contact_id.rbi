# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class ContactID < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::ContactID,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The ID of the portal associated with the contact.
        sig { returns(Integer) }
        attr_accessor :portal_id

        # The email address of the contact.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The unique identifier for the contact.
        sig { returns(T.nilable(Integer)) }
        attr_reader :vid

        sig { params(vid: Integer).void }
        attr_writer :vid

        sig do
          params(portal_id: Integer, email: String, vid: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the portal associated with the contact.
          portal_id:,
          # The email address of the contact.
          email: nil,
          # The unique identifier for the contact.
          vid: nil
        )
        end

        sig do
          override.returns({ portal_id: Integer, email: String, vid: Integer })
        end
        def to_hash
        end
      end
    end
  end
end
