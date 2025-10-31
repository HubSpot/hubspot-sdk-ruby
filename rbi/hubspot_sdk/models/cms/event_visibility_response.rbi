# typed: strong

module HubspotSDK
  module Models
    module Cms
      class EventVisibilityResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::EventVisibilityResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Array[HubspotSDK::Cms::EventVisibilityChange]) }
        attr_accessor :visibility_settings

        sig do
          params(
            created_at: Time,
            visibility_settings:
              T::Array[HubspotSDK::Cms::EventVisibilityChange::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(created_at:, visibility_settings:)
        end

        sig do
          override.returns(
            {
              created_at: Time,
              visibility_settings:
                T::Array[HubspotSDK::Cms::EventVisibilityChange]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
