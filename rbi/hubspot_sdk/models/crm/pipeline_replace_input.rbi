# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PipelineReplaceInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PipelineReplaceInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :display_order

        sig { returns(String) }
        attr_accessor :label

        sig { returns(T::Array[HubspotSDK::Crm::PipelineStageInput]) }
        attr_accessor :stages

        sig do
          params(
            display_order: Integer,
            label: String,
            stages: T::Array[HubspotSDK::Crm::PipelineStageInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(display_order:, label:, stages:)
        end

        sig do
          override.returns(
            {
              display_order: Integer,
              label: String,
              stages: T::Array[HubspotSDK::Crm::PipelineStageInput]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
