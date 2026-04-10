# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Objects
        class ListingUpdateParams < HubSpotSDK::Models::Crm::SimplePublicObjectInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Objects::ListingUpdateParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :listing_id

          # The name of a property whose values are unique for this object type
          sig { returns(T.nilable(String)) }
          attr_reader :id_property

          sig { params(id_property: String).void }
          attr_writer :id_property

          sig do
            params(
              listing_id: String,
              id_property: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            listing_id:,
            # The name of a property whose values are unique for this object type
            id_property: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                listing_id: String,
                id_property: String,
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
