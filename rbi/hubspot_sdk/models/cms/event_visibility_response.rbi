# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class EventVisibilityResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::EventVisibilityResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Array[HubSpotSDK::Cms::EventVisibilityChange]) }
        attr_accessor :visibility_settings

        sig do
          params(
            created_at: Time,
            visibility_settings:
              T::Array[HubSpotSDK::Cms::EventVisibilityChange::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(created_at:, visibility_settings:)
        end

        sig do
          override.returns(
            {
              created_at: Time,
              visibility_settings:
                T::Array[HubSpotSDK::Cms::EventVisibilityChange]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
