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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :dependency_type

        sig { returns(String) }
        attr_accessor :relies_on_sequence_step_id

        sig { returns(Integer) }
        attr_accessor :relies_on_step_order

        sig { returns(String) }
        attr_accessor :required_by_sequence_step_id

        sig { returns(Integer) }
        attr_accessor :required_by_step_order

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            dependency_type: String,
            relies_on_sequence_step_id: String,
            relies_on_step_order: Integer,
            required_by_sequence_step_id: String,
            required_by_step_order: Integer,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          dependency_type:,
          relies_on_sequence_step_id:,
          relies_on_step_order:,
          required_by_sequence_step_id:,
          required_by_step_order:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              dependency_type: String,
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
      end
    end
  end
end
