# typed: strong

module HubspotSDK
  module Models
    module CRM
      class CollectionResponsePipelineStageNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::CollectionResponsePipelineStageNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::PipelineStage]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubspotSDK::CRM::PipelineStage::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::CRM::PipelineStage] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
