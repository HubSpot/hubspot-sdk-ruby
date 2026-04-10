# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponsePipelineStageNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::CollectionResponsePipelineStageNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::PipelineStage]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubSpotSDK::Crm::PipelineStage::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubSpotSDK::Crm::PipelineStage] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
