# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceStepDependencyResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicSequenceStepDependencyResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the step dependency.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the step dependency was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of dependency between sequence steps with accepted values being
        # TASK_COMPLETION or MANUAL_PAUSE.
        sig do
          returns(
            HubspotSDK::Automation::PublicSequenceStepDependencyResponse::DependencyType::TaggedSymbol
          )
        end
        attr_accessor :dependency_type

        # The unique identifier of the sequence step that is responsible for creating and
        # resolving this dependency.
        sig { returns(String) }
        attr_accessor :relies_on_sequence_step_id

        # The order number of the step that is responsible for creating and resolving this
        # dependency.
        sig { returns(Integer) }
        attr_accessor :relies_on_step_order

        # The unique identifier of the sequence step that requires this dependency.
        sig { returns(String) }
        attr_accessor :required_by_sequence_step_id

        # The order number of the step that requires this dependency.
        sig { returns(Integer) }
        attr_accessor :required_by_step_order

        # The date and time when the step dependency was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            dependency_type:
              HubspotSDK::Automation::PublicSequenceStepDependencyResponse::DependencyType::OrSymbol,
            relies_on_sequence_step_id: String,
            relies_on_step_order: Integer,
            required_by_sequence_step_id: String,
            required_by_step_order: Integer,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the step dependency.
          id:,
          # The date and time when the step dependency was created.
          created_at:,
          # The type of dependency between sequence steps with accepted values being
          # TASK_COMPLETION or MANUAL_PAUSE.
          dependency_type:,
          # The unique identifier of the sequence step that is responsible for creating and
          # resolving this dependency.
          relies_on_sequence_step_id:,
          # The order number of the step that is responsible for creating and resolving this
          # dependency.
          relies_on_step_order:,
          # The unique identifier of the sequence step that requires this dependency.
          required_by_sequence_step_id:,
          # The order number of the step that requires this dependency.
          required_by_step_order:,
          # The date and time when the step dependency was last updated.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              dependency_type:
                HubspotSDK::Automation::PublicSequenceStepDependencyResponse::DependencyType::TaggedSymbol,
              relies_on_sequence_step_id: String,
              relies_on_step_order: Integer,
              required_by_sequence_step_id: String,
              required_by_step_order: Integer,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The type of dependency between sequence steps with accepted values being
        # TASK_COMPLETION or MANUAL_PAUSE.
        module DependencyType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicSequenceStepDependencyResponse::DependencyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANUAL_PAUSE =
            T.let(
              :MANUAL_PAUSE,
              HubspotSDK::Automation::PublicSequenceStepDependencyResponse::DependencyType::TaggedSymbol
            )
          TASK_COMPLETION =
            T.let(
              :TASK_COMPLETION,
              HubspotSDK::Automation::PublicSequenceStepDependencyResponse::DependencyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicSequenceStepDependencyResponse::DependencyType::TaggedSymbol
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
