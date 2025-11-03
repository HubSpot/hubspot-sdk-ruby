# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PipelineInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::PipelineInput, HubspotSDK::Internal::AnyHash)
          end

        # The order for displaying this pipeline. If two pipelines have a matching
        # `displayOrder`, they will be sorted alphabetically by label.
        sig { returns(Integer) }
        attr_accessor :display_order

        # A unique label used to organize pipelines in HubSpot's UI
        sig { returns(String) }
        attr_accessor :label

        # Pipeline stage inputs used to create the new or replacement pipeline.
        sig { returns(T::Array[HubspotSDK::Crm::PipelineStageInput]) }
        attr_accessor :stages

        # An input used to create or replace a pipeline's definition.
        sig do
          params(
            display_order: Integer,
            label: String,
            stages: T::Array[HubspotSDK::Crm::PipelineStageInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The order for displaying this pipeline. If two pipelines have a matching
          # `displayOrder`, they will be sorted alphabetically by label.
          display_order:,
          # A unique label used to organize pipelines in HubSpot's UI
          label:,
          # Pipeline stage inputs used to create the new or replacement pipeline.
          stages:
        )
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
