# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class PublicCardListResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::PublicCardListResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(T::Array[HubspotSDK::CRM::Extensions::PublicCardResponse])
          end
          attr_accessor :results

          sig do
            params(
              results:
                T::Array[
                  HubspotSDK::CRM::Extensions::PublicCardResponse::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(results:)
          end

          sig do
            override.returns(
              {
                results:
                  T::Array[HubspotSDK::CRM::Extensions::PublicCardResponse]
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
