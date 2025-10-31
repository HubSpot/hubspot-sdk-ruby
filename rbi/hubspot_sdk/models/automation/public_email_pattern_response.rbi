# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicEmailPatternResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicEmailPatternResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :template_id

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :thread_email_to_step_order

        sig { params(thread_email_to_step_order: Integer).void }
        attr_writer :thread_email_to_step_order

        sig do
          params(
            id: String,
            created_at: Time,
            template_id: String,
            updated_at: Time,
            thread_email_to_step_order: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          template_id:,
          updated_at:,
          thread_email_to_step_order: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              template_id: String,
              updated_at: Time,
              thread_email_to_step_order: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
