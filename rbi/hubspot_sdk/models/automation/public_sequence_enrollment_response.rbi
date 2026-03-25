# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceEnrollmentResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicSequenceEnrollmentResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the sequence enrollment.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the contact was enrolled in the sequence.
        sig { returns(Time) }
        attr_accessor :enrolled_at

        # The identifier of the user who enrolled the contact in the sequence.
        sig { returns(String) }
        attr_accessor :enrolled_by

        # The email address of the user who enrolled the contact in the sequence.
        sig { returns(String) }
        attr_accessor :enrolled_by_email

        # The unique identifier of the sequence in which the contact is enrolled.
        sig { returns(String) }
        attr_accessor :sequence_id

        # The name of the sequence in which the contact is enrolled.
        sig { returns(String) }
        attr_accessor :sequence_name

        # The email address of the contact enrolled in the sequence.
        sig { returns(String) }
        attr_accessor :to_email

        # The date and time when the sequence enrollment was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            enrolled_at: Time,
            enrolled_by: String,
            enrolled_by_email: String,
            sequence_id: String,
            sequence_name: String,
            to_email: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the sequence enrollment.
          id:,
          # The date and time when the contact was enrolled in the sequence.
          enrolled_at:,
          # The identifier of the user who enrolled the contact in the sequence.
          enrolled_by:,
          # The email address of the user who enrolled the contact in the sequence.
          enrolled_by_email:,
          # The unique identifier of the sequence in which the contact is enrolled.
          sequence_id:,
          # The name of the sequence in which the contact is enrolled.
          sequence_name:,
          # The email address of the contact enrolled in the sequence.
          to_email:,
          # The date and time when the sequence enrollment was last updated.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              enrolled_at: Time,
              enrolled_by: String,
              enrolled_by_email: String,
              sequence_id: String,
              sequence_name: String,
              to_email: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
