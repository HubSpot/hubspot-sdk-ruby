# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BreakpointStyles < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BreakpointStyles,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Boolean indicating if the breakpoint is visible.
          sig { returns(T::Boolean) }
          attr_accessor :hidden

          sig { returns(HubspotSDK::Cms::Blogs::Margin) }
          attr_reader :margin

          sig { params(margin: HubspotSDK::Cms::Blogs::Margin::OrHash).void }
          attr_writer :margin

          sig { returns(HubspotSDK::Cms::Blogs::Padding) }
          attr_reader :padding

          sig { params(padding: HubspotSDK::Cms::Blogs::Padding::OrHash).void }
          attr_writer :padding

          sig do
            params(
              hidden: T::Boolean,
              margin: HubspotSDK::Cms::Blogs::Margin::OrHash,
              padding: HubspotSDK::Cms::Blogs::Padding::OrHash
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
                margin: HubspotSDK::Cms::Blogs::Margin,
                padding: HubspotSDK::Cms::Blogs::Padding
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
