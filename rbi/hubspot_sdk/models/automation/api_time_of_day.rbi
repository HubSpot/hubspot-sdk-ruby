# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APITimeOfDay < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APITimeOfDay,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :hour

        sig { returns(Integer) }
        attr_accessor :minute

        sig { params(hour: Integer, minute: Integer).returns(T.attached_class) }
        def self.new(hour:, minute:)
        end

        sig { override.returns({ hour: Integer, minute: Integer }) }
        def to_hash
        end
      end
    end
  end
end
