# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class PublicCardFetchBody < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::PublicCardFetchBody,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # An array of CRM object types where this card should be displayed. HubSpot will
          # call your target URL whenever a user visits a record page of the types defined
          # here.
          sig do
            returns(T::Array[HubSpotSDK::Crm::Extensions::CardObjectTypeBody])
          end
          attr_accessor :object_types

          # URL to a service endpoint that will respond with details for this card. HubSpot
          # will call this endpoint each time a user visits a CRM record page where this
          # card should be displayed.
          sig { returns(String) }
          attr_accessor :target_url

          sig do
            params(
              object_types:
                T::Array[
                  HubSpotSDK::Crm::Extensions::CardObjectTypeBody::OrHash
                ],
              target_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of CRM object types where this card should be displayed. HubSpot will
            # call your target URL whenever a user visits a record page of the types defined
            # here.
            object_types:,
            # URL to a service endpoint that will respond with details for this card. HubSpot
            # will call this endpoint each time a user visits a CRM record page where this
            # card should be displayed.
            target_url:
          )
          end

          sig do
            override.returns(
              {
                object_types:
                  T::Array[HubSpotSDK::Crm::Extensions::CardObjectTypeBody],
                target_url: String
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
