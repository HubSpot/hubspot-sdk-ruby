# typed: strong

module HubspotSDK
  module Models
    module Cms
      class OptionDecorations < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::OptionDecorations,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :color

        sig { params(color: String).returns(T.attached_class) }
        def self.new(color:)
        end

        sig { override.returns({ color: String }) }
        def to_hash
        end
      end
    end
  end
end
