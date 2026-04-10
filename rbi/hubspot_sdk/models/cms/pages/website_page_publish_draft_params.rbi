# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Pages
        class WebsitePagePublishDraftParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Pages::WebsitePagePublishDraftParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_id_

          sig do
            params(
              object_id_: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(object_id_:, request_options: {})
          end

          sig do
            override.returns(
              {
                object_id_: String,
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
