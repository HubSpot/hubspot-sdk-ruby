# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicSequenceEnrollmentLiteResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicSequenceEnrollmentLiteResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the sequence enrollment.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the contact was enrolled in the sequence.
        sig { returns(Time) }
        attr_accessor :enrolled_at

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
            to_email: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the sequence enrollment.
          id:,
          # The date and time when the contact was enrolled in the sequence.
          enrolled_at:,
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
