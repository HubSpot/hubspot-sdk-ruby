# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Objects
        class CartDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Objects::CartDeleteParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :cart_id

          sig do
            params(
              cart_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(cart_id:, request_options: {})
          end

          sig do
            override.returns(
              { cart_id: String, request_options: HubSpotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
