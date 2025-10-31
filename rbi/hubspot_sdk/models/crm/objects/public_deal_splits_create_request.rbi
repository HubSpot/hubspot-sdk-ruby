# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class PublicDealSplitsCreateRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::PublicDealSplitsCreateRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :id

          sig do
            returns(T::Array[HubspotSDK::CRM::Objects::PublicDealSplitInput])
          end
          attr_accessor :splits

          sig do
            params(
              id: Integer,
              splits:
                T::Array[HubspotSDK::CRM::Objects::PublicDealSplitInput::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(id:, splits:)
          end

          sig do
            override.returns(
              {
                id: Integer,
                splits: T::Array[HubspotSDK::CRM::Objects::PublicDealSplitInput]
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
