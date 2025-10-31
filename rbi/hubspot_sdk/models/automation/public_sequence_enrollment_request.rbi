# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceEnrollmentRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicSequenceEnrollmentRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :contact_id

        sig { returns(String) }
        attr_accessor :sender_email

        sig { returns(String) }
        attr_accessor :sequence_id

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
          contact_id:,
          sender_email:,
          sequence_id:,
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
