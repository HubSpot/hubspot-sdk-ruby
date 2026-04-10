# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PipelineCreateStageParams < HubSpotSDK::Models::Crm::PipelineStageInput
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PipelineCreateStageParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(String) }
        attr_accessor :pipeline_id

        sig do
          params(
            object_type: String,
            pipeline_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(object_type:, pipeline_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              object_type: String,
              pipeline_id: String,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
