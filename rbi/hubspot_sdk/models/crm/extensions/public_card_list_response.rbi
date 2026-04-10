# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class PublicCardListResponse < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::PublicCardListResponse,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # A list of card responses
          sig do
            returns(T::Array[HubSpotSDK::Crm::Extensions::PublicCardResponse])
          end
          attr_accessor :results

          sig do
            params(
              results:
                T::Array[
                  HubSpotSDK::Crm::Extensions::PublicCardResponse::OrHash
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
                  T::Array[HubSpotSDK::Crm::Extensions::PublicCardResponse]
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
