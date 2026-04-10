# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class PostGetParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::PostGetParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_id_

          # Whether to return only results that have been archived.
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
              object_id_: String,
              archived: T::Boolean,
              property: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            object_id_:,
            # Whether to return only results that have been archived.
            archived: nil,
            property: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                object_id_: String,
                archived: T::Boolean,
                property: String,
                request_options: HubSpotSDK::RequestOptions
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
