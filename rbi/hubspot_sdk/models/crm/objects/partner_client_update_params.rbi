# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Objects
        class PartnerClientUpdateParams < HubSpotSDK::Models::Crm::SimplePublicObjectInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Objects::PartnerClientUpdateParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :partner_client_id

          # The name of a property whose values are unique for this object type
          sig { returns(T.nilable(String)) }
          attr_reader :id_property

          sig { params(id_property: String).void }
          attr_writer :id_property

          sig do
            params(
              partner_client_id: String,
              id_property: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            partner_client_id:,
            # The name of a property whose values are unique for this object type
            id_property: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                partner_client_id: String,
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
