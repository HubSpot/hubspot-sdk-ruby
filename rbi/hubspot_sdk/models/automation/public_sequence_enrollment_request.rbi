# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicSequenceEnrollmentRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicSequenceEnrollmentRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the contact to be enrolled in the sequence.
        sig { returns(String) }
        attr_accessor :contact_id

        # The email address of the sender enrolling the contact in the sequence.
        sig { returns(String) }
        attr_accessor :sender_email

        # The unique identifier of the sequence in which the contact will be enrolled.
        sig { returns(String) }
        attr_accessor :sequence_id

        # The alias email address used by the sender when enrolling the contact.
        sig { returns(T.nilable(String)) }
        attr_reader :sender_alias_address

        sig { params(sender_alias_address: String).void }
        attr_writer :sender_alias_address

        sig do
          params(
            contact_id: String,
            sender_email: String,
            sequence_id: String,
            sender_alias_address: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the contact to be enrolled in the sequence.
          contact_id:,
          # The email address of the sender enrolling the contact in the sequence.
          sender_email:,
          # The unique identifier of the sequence in which the contact will be enrolled.
          sequence_id:,
          # The alias email address used by the sender when enrolling the contact.
          sender_alias_address: nil
        )
        end

        sig do
          override.returns(
            {
              contact_id: String,
              sender_email: String,
              sequence_id: String,
              sender_alias_address: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
