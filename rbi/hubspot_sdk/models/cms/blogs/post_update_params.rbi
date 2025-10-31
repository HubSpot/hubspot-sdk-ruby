# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class PostUpdateParams < HubspotSDK::Models::Cms::Blogs::BlogPost
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::PostUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Specifies whether to update deleted blog posts. Defaults to `false`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          sig do
            params(
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Specifies whether to update deleted blog posts. Defaults to `false`.
            archived: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                archived: T::Boolean,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
