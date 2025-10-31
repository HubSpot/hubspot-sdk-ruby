# typed: strong

module HubspotSDK
  module Models
    module CRM
      class ReportCreationResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::ReportCreationResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::CRM::DateTime) }
        attr_reader :enqueue_time

        sig { params(enqueue_time: HubspotSDK::CRM::DateTime::OrHash).void }
        attr_writer :enqueue_time

        sig { returns(String) }
        attr_accessor :user_email

        sig { returns(Integer) }
        attr_accessor :user_id

        sig do
          params(
            enqueue_time: HubspotSDK::CRM::DateTime::OrHash,
            user_email: String,
            user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(enqueue_time:, user_email:, user_id:)
        end

        sig do
          override.returns(
            {
              enqueue_time: HubspotSDK::CRM::DateTime,
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
