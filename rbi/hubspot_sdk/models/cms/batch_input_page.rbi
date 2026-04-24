# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BatchInputPage < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BatchInputPage,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Pages to input.
        sig { returns(T::Array[HubSpotSDK::Cms::PageData]) }
        attr_accessor :inputs

        sig do
          params(inputs: T::Array[HubSpotSDK::Cms::PageData::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(
          # Pages to input.
          inputs:
        )
        end

        sig do
          override.returns({ inputs: T::Array[HubSpotSDK::Cms::PageData] })
        end
        def to_hash
        end
      end
    end
  end
end
