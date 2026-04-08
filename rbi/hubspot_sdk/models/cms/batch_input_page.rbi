# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BatchInputPage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BatchInputPage,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Pages to input.
        sig { returns(T::Array[HubspotSDK::Cms::PageData]) }
        attr_accessor :inputs

        sig do
          params(inputs: T::Array[HubspotSDK::Cms::PageData::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(
          # Pages to input.
          inputs:
        )
        end

        sig do
          override.returns({ inputs: T::Array[HubspotSDK::Cms::PageData] })
        end
        def to_hash
        end
      end
    end
  end
end
