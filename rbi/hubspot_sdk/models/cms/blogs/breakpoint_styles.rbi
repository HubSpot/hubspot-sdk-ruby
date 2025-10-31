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

          sig { returns(T::Boolean) }
          attr_accessor :hidden

          sig { returns(T.anything) }
          attr_accessor :margin

          sig { returns(T.anything) }
          attr_accessor :padding

          sig do
            params(
              hidden: T::Boolean,
              margin: T.anything,
              padding: T.anything
            ).returns(T.attached_class)
          end
          def self.new(hidden:, margin:, padding:)
          end

          sig do
            override.returns(
              { hidden: T::Boolean, margin: T.anything, padding: T.anything }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
