# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class PublicCardListResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::PublicCardListResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # A list of card responses
          sig do
            returns(T::Array[HubspotSDK::Crm::Extensions::PublicCardResponse])
          end
          attr_accessor :results

          sig do
            params(
              results:
                T::Array[
                  HubspotSDK::Crm::Extensions::PublicCardResponse::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # A list of card responses
            results:
          )
          end

          sig do
            override.returns(
              {
                results:
                  T::Array[HubspotSDK::Crm::Extensions::PublicCardResponse]
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
