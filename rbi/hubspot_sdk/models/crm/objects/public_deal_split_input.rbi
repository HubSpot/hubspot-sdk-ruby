# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class PublicDealSplitInput < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::PublicDealSplitInput,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :owner_id

          sig { returns(Float) }
          attr_accessor :percentage

          sig do
            params(owner_id: Integer, percentage: Float).returns(
              T.attached_class
            )
          end
          def self.new(owner_id:, percentage:)
          end

          sig { override.returns({ owner_id: Integer, percentage: Float }) }
          def to_hash
          end
        end
      end
    end
  end
end
