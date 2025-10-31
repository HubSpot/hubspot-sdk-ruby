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
        sig { returns(T::Array[HubspotSDK::Cms::Page]) }
        attr_accessor :inputs

        # Wrapper for providing an array of pages as inputs.
        sig do
          params(inputs: T::Array[HubspotSDK::Cms::Page::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(
          # Pages to input.
          inputs:
        )
        end

        sig { override.returns({ inputs: T::Array[HubspotSDK::Cms::Page] }) }
        def to_hash
        end
      end
    end
  end
end
