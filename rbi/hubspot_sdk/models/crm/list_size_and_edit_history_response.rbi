# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListSizeAndEditHistoryResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListSizeAndEditHistoryResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Time]) }
        attr_accessor :edit_history

        sig { returns(T::Array[HubspotSDK::Crm::ListSizeDataPoint]) }
        attr_accessor :size_history

        sig do
          params(
            edit_history: T::Array[Time],
            size_history: T::Array[HubspotSDK::Crm::ListSizeDataPoint::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(edit_history:, size_history:)
        end

        sig do
          override.returns(
            {
              edit_history: T::Array[Time],
              size_history: T::Array[HubspotSDK::Crm::ListSizeDataPoint]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
