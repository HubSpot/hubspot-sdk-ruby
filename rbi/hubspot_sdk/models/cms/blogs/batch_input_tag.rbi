# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputTag < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::BatchInputTag,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Blog tags to input.
          sig { returns(T::Array[HubSpotSDK::Cms::Blogs::Tag]) }
          attr_accessor :inputs

          sig do
            params(
              inputs: T::Array[HubSpotSDK::Cms::Blogs::Tag::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Blog tags to input.
            inputs:
          )
          end

          sig do
            override.returns({ inputs: T::Array[HubSpotSDK::Cms::Blogs::Tag] })
          end
          def to_hash
          end
        end
      end
    end
  end
end
