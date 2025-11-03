# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePipelineNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponsePipelineNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::Pipeline]) }
        attr_accessor :results

        sig do
          params(results: T::Array[HubspotSDK::Crm::Pipeline::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(results:)
        end

        sig do
          override.returns({ results: T::Array[HubspotSDK::Crm::Pipeline] })
        end
        def to_hash
        end
      end
    end
  end
end
