# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class DomainGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::DomainGetParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :domain_id

        sig do
          params(
            domain_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(domain_id:, request_options: {})
        end

        sig do
          override.returns(
            { domain_id: String, request_options: HubSpotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
