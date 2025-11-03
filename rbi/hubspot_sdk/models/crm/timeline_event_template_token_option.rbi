# typed: strong

module HubspotSDK
  module Models
    module Crm
      class TimelineEventTemplateTokenOption < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::TimelineEventTemplateTokenOption,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :value

        sig { params(label: String, value: String).returns(T.attached_class) }
        def self.new(label:, value:)
        end

        sig { override.returns({ label: String, value: String }) }
        def to_hash
        end
      end
    end
  end
end
