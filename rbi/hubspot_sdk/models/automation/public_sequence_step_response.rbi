# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceStepResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicSequenceStepResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :action_type

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Integer) }
        attr_accessor :delay_millis

        sig { returns(Integer) }
        attr_accessor :step_order

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          returns(T.nilable(HubspotSDK::Automation::PublicEmailPatternResponse))
        end
        attr_reader :email_pattern

        sig do
          params(
            email_pattern:
              HubspotSDK::Automation::PublicEmailPatternResponse::OrHash
          ).void
        end
        attr_writer :email_pattern

        sig do
          returns(T.nilable(HubspotSDK::Automation::PublicTaskPatternResponse))
        end
        attr_reader :task_pattern

        sig do
          params(
            task_pattern:
              HubspotSDK::Automation::PublicTaskPatternResponse::OrHash
          ).void
        end
        attr_writer :task_pattern

        sig do
          params(
            id: String,
            action_type: String,
            created_at: Time,
            delay_millis: Integer,
            step_order: Integer,
            updated_at: Time,
            email_pattern:
              HubspotSDK::Automation::PublicEmailPatternResponse::OrHash,
            task_pattern:
              HubspotSDK::Automation::PublicTaskPatternResponse::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          action_type:,
          created_at:,
          delay_millis:,
          step_order:,
          updated_at:,
          email_pattern: nil,
          task_pattern: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action_type: String,
              created_at: Time,
              delay_millis: Integer,
              step_order: Integer,
              updated_at: Time,
              email_pattern: HubspotSDK::Automation::PublicEmailPatternResponse,
              task_pattern: HubspotSDK::Automation::PublicTaskPatternResponse
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
