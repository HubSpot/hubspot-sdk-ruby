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
        sig { returns(T::Array[HubspotSDK::Cms::CmsPage]) }
        attr_accessor :inputs

        sig do
          params(inputs: T::Array[HubspotSDK::Cms::CmsPage::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(
          # Pages to input.
          inputs:
        )
        end

        sig { override.returns({ inputs: T::Array[HubspotSDK::Cms::CmsPage] }) }
        def to_hash
        end
      end
    end
  end
end
