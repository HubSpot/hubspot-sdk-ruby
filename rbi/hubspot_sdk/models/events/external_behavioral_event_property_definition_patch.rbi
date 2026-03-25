# typed: strong

module HubspotSDK
  module Models
    module Events
      class ExternalBehavioralEventPropertyDefinitionPatch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::ExternalBehavioralEventPropertyDefinitionPatch,
              HubspotSDK::Internal::AnyHash
            )
          end

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
        sig { returns(T.nilable(T::Array[HubspotSDK::Events::OptionInput])) }
        attr_reader :options

        sig do
          params(
            options: T::Array[HubspotSDK::Events::OptionInput::OrHash]
          ).void
        end
        attr_writer :options

        sig do
          params(
            description: String,
            label: String,
            options: T::Array[HubspotSDK::Events::OptionInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # A description of the property that will be shown as help text in HubSpot.
          description: nil,
          # Human readable label for the property. Used in HubSpot UI
          label: nil,
          # A list of available options for the property if it is an enumeration. NOTE: This
          # field is only applicable for enumerated properties.
          options: nil
        )
        end

        sig do
          override.returns(
            {
              description: String,
              label: String,
              options: T::Array[HubspotSDK::Events::OptionInput]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
