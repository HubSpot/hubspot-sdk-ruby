# typed: strong

module HubspotSDK
  module Models
    module Events
      class EventDefinitionUpdatePropertyParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::EventDefinitionUpdatePropertyParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :event_name

        # A description of the property that will be shown as help text in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Human readable label for the property. Used in HubSpot UI
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # A list of available options for the property if it is an enumeration. NOTE: This
        # field is only applicable for enumerated properties.
        sig { returns(T.nilable(T::Array[HubspotSDK::OptionInput])) }
        attr_reader :options

        sig { params(options: T::Array[HubspotSDK::OptionInput::OrHash]).void }
        attr_writer :options

        sig do
          params(
            event_name: String,
            description: String,
            label: String,
            options: T::Array[HubspotSDK::OptionInput::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          event_name:,
          # A description of the property that will be shown as help text in HubSpot.
          description: nil,
          # Human readable label for the property. Used in HubSpot UI
          label: nil,
          # A list of available options for the property if it is an enumeration. NOTE: This
          # field is only applicable for enumerated properties.
          options: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              event_name: String,
              description: String,
              label: String,
              options: T::Array[HubspotSDK::OptionInput],
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
