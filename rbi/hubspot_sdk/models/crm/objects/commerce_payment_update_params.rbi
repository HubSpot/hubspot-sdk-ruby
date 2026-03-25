# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class CommercePaymentUpdateParams < HubspotSDK::Models::Crm::SimplePublicObjectInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::CommercePaymentUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :commerce_payment_id

          # The name of a property whose values are unique for this object type
          sig { returns(T.nilable(String)) }
          attr_reader :id_property

          sig { params(id_property: String).void }
          attr_writer :id_property

          sig do
            params(
              commerce_payment_id: String,
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            commerce_payment_id:,
            # The name of a property whose values are unique for this object type
            id_property: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                commerce_payment_id: String,
                id_property: String,
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
