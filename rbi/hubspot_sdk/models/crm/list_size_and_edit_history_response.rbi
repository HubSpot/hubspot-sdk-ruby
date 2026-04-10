# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListSizeAndEditHistoryResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListSizeAndEditHistoryResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Time]) }
        attr_accessor :edit_history

        sig { returns(T::Array[HubSpotSDK::Crm::ListSizeDataPoint]) }
        attr_accessor :size_history

        sig do
          params(
            edit_history: T::Array[Time],
            size_history: T::Array[HubSpotSDK::Crm::ListSizeDataPoint::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(edit_history:, size_history:)
        end

        sig do
          override.returns(
            {
              edit_history: T::Array[Time],
              size_history: T::Array[HubSpotSDK::Crm::ListSizeDataPoint]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
