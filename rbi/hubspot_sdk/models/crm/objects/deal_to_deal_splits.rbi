# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class DealToDealSplits < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::DealToDealSplits,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T::Array[HubspotSDK::Crm::SimplePublicObject]) }
          attr_accessor :splits

          sig do
            params(
              id: String,
              splits: T::Array[HubspotSDK::Crm::SimplePublicObject::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(id:, splits:)
          end

          sig do
            override.returns(
              {
                id: String,
                splits: T::Array[HubspotSDK::Crm::SimplePublicObject]
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
