# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceEnrollmentLiteResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicSequenceEnrollmentLiteResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :enrolled_at

        sig { returns(String) }
        attr_accessor :to_email

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
        def self.new(id:, enrolled_at:, to_email:, updated_at:)
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
