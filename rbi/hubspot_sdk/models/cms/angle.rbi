# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Angle < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Angle, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :units

        sig { returns(Float) }
        attr_accessor :value

        sig { params(units: String, value: Float).returns(T.attached_class) }
        def self.new(units:, value:)
        end

        sig { override.returns({ units: String, value: Float }) }
        def to_hash
        end
      end
    end
  end
end
