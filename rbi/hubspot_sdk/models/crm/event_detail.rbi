# typed: strong

module HubspotSDK
  module Models
    module CRM
      class EventDetail < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::CRM::EventDetail, HubspotSDK::Internal::AnyHash)
          end

        # The details Markdown rendered as HTML.
        sig { returns(String) }
        attr_accessor :details

        # The details Markdown rendered as HTML.
        sig { params(details: String).returns(T.attached_class) }
        def self.new(
          # The details Markdown rendered as HTML.
          details:
        )
        end

        sig { override.returns({ details: String }) }
        def to_hash
        end
      end
    end
  end
end
