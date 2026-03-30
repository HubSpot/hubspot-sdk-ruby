# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BreakpointStyles < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BreakpointStyles,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Boolean indicating if the breakpoint is visible.
        sig { returns(T::Boolean) }
        attr_accessor :hidden

        sig { returns(HubspotSDK::Cms::Margin) }
        attr_reader :margin

        sig { params(margin: HubspotSDK::Cms::Margin::OrHash).void }
        attr_writer :margin

        sig { returns(HubspotSDK::Cms::Padding) }
        attr_reader :padding

        sig { params(padding: HubspotSDK::Cms::Padding::OrHash).void }
        attr_writer :padding

        sig do
          params(
            hidden: T::Boolean,
            margin: HubspotSDK::Cms::Margin::OrHash,
            padding: HubspotSDK::Cms::Padding::OrHash
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
              margin: HubspotSDK::Cms::Margin,
              padding: HubspotSDK::Cms::Padding
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
