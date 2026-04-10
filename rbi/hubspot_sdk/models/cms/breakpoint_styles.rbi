# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BreakpointStyles < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BreakpointStyles,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Boolean indicating if the breakpoint is visible.
        sig { returns(T::Boolean) }
        attr_accessor :hidden

        sig { returns(HubSpotSDK::Cms::Margin) }
        attr_reader :margin

        sig { params(margin: HubSpotSDK::Cms::Margin::OrHash).void }
        attr_writer :margin

        sig { returns(HubSpotSDK::Cms::Padding) }
        attr_reader :padding

        sig { params(padding: HubSpotSDK::Cms::Padding::OrHash).void }
        attr_writer :padding

        sig do
          params(
            hidden: T::Boolean,
            margin: HubSpotSDK::Cms::Margin::OrHash,
            padding: HubSpotSDK::Cms::Padding::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Boolean indicating if the breakpoint is visible.
          hidden:,
          margin:,
          padding:
        )
        end

        sig do
          override.returns(
            {
              hidden: T::Boolean,
              margin: HubSpotSDK::Cms::Margin,
              padding: HubSpotSDK::Cms::Padding
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
