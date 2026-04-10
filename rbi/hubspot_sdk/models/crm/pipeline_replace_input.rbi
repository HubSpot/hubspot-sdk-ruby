# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PipelineReplaceInput < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PipelineReplaceInput,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The order for displaying this pipeline stage. If two pipeline stages have a
        # matching `displayOrder`, they will be sorted alphabetically by label.
        sig { returns(Integer) }
        attr_accessor :display_order

        # A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
        # label must be unique within that pipeline.
        sig { returns(String) }
        attr_accessor :label

        # The stages associated with the pipeline. They can be retrieved and updated via
        # the pipeline stages endpoints.
        sig { returns(T::Array[HubSpotSDK::Crm::PipelineStageInput]) }
        attr_accessor :stages

        sig do
          params(
            display_order: Integer,
            label: String,
            stages: T::Array[HubSpotSDK::Crm::PipelineStageInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The order for displaying this pipeline stage. If two pipeline stages have a
          # matching `displayOrder`, they will be sorted alphabetically by label.
          display_order:,
          # A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
          # label must be unique within that pipeline.
          label:,
          # The stages associated with the pipeline. They can be retrieved and updated via
          # the pipeline stages endpoints.
          stages:
        )
        end

        sig do
          override.returns(
            {
              display_order: Integer,
              label: String,
              stages: T::Array[HubSpotSDK::Crm::PipelineStageInput]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
