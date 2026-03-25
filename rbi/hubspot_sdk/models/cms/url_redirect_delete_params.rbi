# typed: strong

module HubspotSDK
  module Models
    module Cms
      class URLRedirectDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::URLRedirectDeleteParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :url_redirect_id

        sig do
          params(
            url_redirect_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(url_redirect_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              url_redirect_id: String,
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
