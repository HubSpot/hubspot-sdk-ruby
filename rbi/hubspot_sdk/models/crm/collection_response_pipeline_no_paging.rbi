# typed: strong

module HubspotSDK
  module Models
    module CRM
      class CollectionResponsePipelineNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::CollectionResponsePipelineNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::Pipeline]) }
        attr_accessor :results

        sig do
          params(results: T::Array[HubspotSDK::CRM::Pipeline::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(results:)
        end

        sig do
          override.returns({ results: T::Array[HubspotSDK::CRM::Pipeline] })
        end
        def to_hash
        end
      end
    end
  end
end
