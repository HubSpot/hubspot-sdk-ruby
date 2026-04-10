# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponsePipelineNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::CollectionResponsePipelineNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::Pipeline]) }
        attr_accessor :results

        sig do
          params(results: T::Array[HubSpotSDK::Crm::Pipeline::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(results:)
        end

        sig do
          override.returns({ results: T::Array[HubSpotSDK::Crm::Pipeline] })
        end
        def to_hash
        end
      end
    end
  end
end
