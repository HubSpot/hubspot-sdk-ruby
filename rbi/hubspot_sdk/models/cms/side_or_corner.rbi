# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SideOrCorner < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::SideOrCorner, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :horizontal_side

        sig { returns(String) }
        attr_accessor :vertical_side

        sig do
          params(horizontal_side: String, vertical_side: String).returns(
            T.attached_class
          )
        end
        def self.new(horizontal_side:, vertical_side:)
        end

        sig do
          override.returns({ horizontal_side: String, vertical_side: String })
        end
        def to_hash
        end
      end
    end
  end
end
