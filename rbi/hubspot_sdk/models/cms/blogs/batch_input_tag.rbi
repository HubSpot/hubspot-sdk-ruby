# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputTag < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BatchInputTag,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Blog tags to input.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::Tag]) }
          attr_accessor :inputs

          # Wrapper for providing an array of blog tags as inputs.
          sig do
            params(
              inputs: T::Array[HubspotSDK::Cms::Blogs::Tag::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Blog tags to input.
            inputs:
          )
          end

          sig do
            override.returns({ inputs: T::Array[HubspotSDK::Cms::Blogs::Tag] })
          end
          def to_hash
          end
        end
      end
    end
  end
end
