# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class PublicCardFetchBody < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::PublicCardFetchBody,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(T::Array[HubspotSDK::CRM::Extensions::CardObjectTypeBody])
          end
          attr_accessor :object_types

          sig { returns(String) }
          attr_accessor :target_url

          sig do
            params(
              object_types:
                T::Array[
                  HubspotSDK::CRM::Extensions::CardObjectTypeBody::OrHash
                ],
              target_url: String
            ).returns(T.attached_class)
          end
          def self.new(object_types:, target_url:)
          end

          sig do
            override.returns(
              {
                object_types:
                  T::Array[HubspotSDK::CRM::Extensions::CardObjectTypeBody],
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
