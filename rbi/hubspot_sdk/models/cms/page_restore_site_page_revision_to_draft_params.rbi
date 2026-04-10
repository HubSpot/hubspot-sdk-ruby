# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class PageRestoreSitePageRevisionToDraftParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::PageRestoreSitePageRevisionToDraftParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_id_

        sig { returns(Integer) }
        attr_accessor :revision_id

        sig do
          params(
            object_id_: String,
            revision_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(object_id_:, revision_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              object_id_: String,
              revision_id: Integer,
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
