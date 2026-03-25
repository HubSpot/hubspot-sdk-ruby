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

        # The unique identifier of the sequence step.
        sig { returns(String) }
        attr_accessor :id

        # The type of action to be performed in the sequence step.
        sig do
          returns(
            HubspotSDK::Automation::PublicSequenceStepResponse::ActionType::TaggedSymbol
          )
        end
        attr_accessor :action_type

        # The date and time when the sequence step was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The delay in milliseconds before the sequence step is executed.
        sig { returns(Integer) }
        attr_accessor :delay_millis

        # The order of the step within the sequence.
        sig { returns(Integer) }
        attr_accessor :step_order

        # The date and time when the sequence step was last updated.
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
            action_type:
              HubspotSDK::Automation::PublicSequenceStepResponse::ActionType::OrSymbol,
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
          # The unique identifier of the sequence step.
          id:,
          # The type of action to be performed in the sequence step.
          action_type:,
          # The date and time when the sequence step was created.
          created_at:,
          # The delay in milliseconds before the sequence step is executed.
          delay_millis:,
          # The order of the step within the sequence.
          step_order:,
          # The date and time when the sequence step was last updated.
          updated_at:,
          email_pattern: nil,
          task_pattern: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action_type:
                HubspotSDK::Automation::PublicSequenceStepResponse::ActionType::TaggedSymbol,
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

        # The type of action to be performed in the sequence step.
        module ActionType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicSequenceStepResponse::ActionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Automation::PublicSequenceStepResponse::ActionType::TaggedSymbol
            )
          FINISH_ENROLLMENT =
            T.let(
              :FINISH_ENROLLMENT,
              HubspotSDK::Automation::PublicSequenceStepResponse::ActionType::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubspotSDK::Automation::PublicSequenceStepResponse::ActionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicSequenceStepResponse::ActionType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
