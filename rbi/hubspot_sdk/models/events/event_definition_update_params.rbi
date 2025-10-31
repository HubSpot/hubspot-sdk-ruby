# typed: strong

module HubspotSDK
  module Models
    module Events
      class EventDefinitionUpdateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::EventDefinitionUpdateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A description of the event that will be shown as help text in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Human readable label for the event. Used in HubSpot UI
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig do
          params(
            description: String,
            label: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A description of the event that will be shown as help text in HubSpot.
          description: nil,
          # Human readable label for the event. Used in HubSpot UI
          label: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              description: String,
              label: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
