# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputBlogPost < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BatchInputBlogPost,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Blog posts to input.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::BlogPost]) }
          attr_accessor :inputs

          sig do
            params(
              inputs: T::Array[HubspotSDK::Cms::Blogs::BlogPost::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Blog posts to input.
            inputs:
          )
          end

          sig do
            override.returns(
              { inputs: T::Array[HubspotSDK::Cms::Blogs::BlogPost] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
