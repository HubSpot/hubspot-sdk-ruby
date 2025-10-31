# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputBlogAuthor < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BatchInputBlogAuthor,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Blog authors to input.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::BlogAuthor]) }
          attr_accessor :inputs

          # Wrapper for providing an array of blog authors as inputs.
          sig do
            params(
              inputs: T::Array[HubspotSDK::Cms::Blogs::BlogAuthor::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Blog authors to input.
            inputs:
          )
          end

          sig do
            override.returns(
              { inputs: T::Array[HubspotSDK::Cms::Blogs::BlogAuthor] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
