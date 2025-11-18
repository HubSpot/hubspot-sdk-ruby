# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        class ReportCreationResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Associations::ReportCreationResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubspotSDK::Crm::Associations::DateTime) }
          attr_reader :enqueue_time

          sig do
            params(
              enqueue_time: HubspotSDK::Crm::Associations::DateTime::OrHash
            ).void
          end
          attr_writer :enqueue_time

          # Email of the user
          sig { returns(String) }
          attr_accessor :user_email

          # ID of the user
          sig { returns(Integer) }
          attr_accessor :user_id

          sig do
            params(
              enqueue_time: HubspotSDK::Crm::Associations::DateTime::OrHash,
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
                enqueue_time: HubspotSDK::Crm::Associations::DateTime,
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
end
