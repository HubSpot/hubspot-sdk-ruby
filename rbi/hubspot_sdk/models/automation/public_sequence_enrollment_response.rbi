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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :enrolled_at

        sig { returns(String) }
        attr_accessor :enrolled_by

        sig { returns(String) }
        attr_accessor :enrolled_by_email

        sig { returns(String) }
        attr_accessor :sequence_id

        sig { returns(String) }
        attr_accessor :sequence_name

        sig { returns(String) }
        attr_accessor :to_email

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
          id:,
          enrolled_at:,
          enrolled_by:,
          enrolled_by_email:,
          sequence_id:,
          sequence_name:,
          to_email:,
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
