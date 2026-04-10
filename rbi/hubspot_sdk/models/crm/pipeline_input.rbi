# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PipelineInput < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Crm::PipelineInput, HubSpotSDK::Internal::AnyHash)
          end

        # The order for displaying this pipeline. If two pipelines have a matching
        # `displayOrder`, they will be sorted alphabetically by label.
        sig { returns(Integer) }
        attr_accessor :display_order

        # A unique label used to organize pipelines in HubSpot's UI
        sig { returns(String) }
        attr_accessor :label

        # Pipeline stage inputs used to create the new or replacement pipeline.
        sig { returns(T::Array[HubSpotSDK::Crm::PipelineStageInput]) }
        attr_accessor :stages

        sig { returns(T.nilable(String)) }
        attr_reader :pipeline_id

        sig { params(pipeline_id: String).void }
        attr_writer :pipeline_id

        sig do
          params(
            display_order: Integer,
            label: String,
            stages: T::Array[HubSpotSDK::Crm::PipelineStageInput::OrHash],
            pipeline_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The order for displaying this pipeline. If two pipelines have a matching
          # `displayOrder`, they will be sorted alphabetically by label.
          display_order:,
          # A unique label used to organize pipelines in HubSpot's UI
          label:,
          # Pipeline stage inputs used to create the new or replacement pipeline.
          stages:,
          pipeline_id: nil
        )
        end

        sig do
          override.returns(
            {
              display_order: Integer,
              label: String,
              stages: T::Array[HubSpotSDK::Crm::PipelineStageInput],
              pipeline_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
