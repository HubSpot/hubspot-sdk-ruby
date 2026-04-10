# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputBlogAuthor < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::BatchInputBlogAuthor,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Blog authors to input.
          sig { returns(T::Array[HubSpotSDK::Cms::Blogs::BlogAuthor]) }
          attr_accessor :inputs

          sig do
            params(
              inputs: T::Array[HubSpotSDK::Cms::Blogs::BlogAuthor::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Blog authors to input.
            inputs:
          )
          end

          sig do
            override.returns(
              { inputs: T::Array[HubSpotSDK::Cms::Blogs::BlogAuthor] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
