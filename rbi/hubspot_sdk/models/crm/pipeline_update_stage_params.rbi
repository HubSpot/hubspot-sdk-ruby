# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PipelineUpdateStageParams < HubspotSDK::Models::Crm::PipelineStagePatchInput
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PipelineUpdateStageParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(String) }
        attr_accessor :pipeline_id

        sig { returns(String) }
        attr_accessor :stage_id

        sig do
          params(
            object_type: String,
            pipeline_id: String,
            stage_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(object_type:, pipeline_id:, stage_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              object_type: String,
              pipeline_id: String,
              stage_id: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
