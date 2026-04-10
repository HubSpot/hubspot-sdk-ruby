# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ReportCreationResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ReportCreationResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Crm::DateTime) }
        attr_reader :enqueue_time

        sig { params(enqueue_time: HubSpotSDK::Crm::DateTime::OrHash).void }
        attr_writer :enqueue_time

        # Email of the user
        sig { returns(String) }
        attr_accessor :user_email

        # ID of the user
        sig { returns(Integer) }
        attr_accessor :user_id

        sig do
          params(
            enqueue_time: HubSpotSDK::Crm::DateTime::OrHash,
            user_email: String,
            user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          enqueue_time:,
          # Email of the user
          user_email:,
          # ID of the user
          user_id:
        )
        end

        sig do
          override.returns(
            {
              enqueue_time: HubSpotSDK::Crm::DateTime,
              user_email: String,
              user_id: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
