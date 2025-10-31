# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class TagGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::TagGetParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Specifies whether to return deleted Blog Tags. Defaults to `false`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          sig { returns(T.nilable(String)) }
          attr_reader :property

          sig { params(property: String).void }
          attr_writer :property

          sig do
            params(
              archived: T::Boolean,
              property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Specifies whether to return deleted Blog Tags. Defaults to `false`.
            archived: nil,
            property: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                archived: T::Boolean,
                property: String,
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
