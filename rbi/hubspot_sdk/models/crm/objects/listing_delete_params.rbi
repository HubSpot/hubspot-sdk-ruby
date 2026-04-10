# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Objects
        class ListingDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Objects::ListingDeleteParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :listing_id

          sig do
            params(
              listing_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(listing_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                listing_id: String,
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
