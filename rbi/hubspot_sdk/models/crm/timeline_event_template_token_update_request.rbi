# typed: strong

module HubspotSDK
  module Models
    module CRM
      class TimelineEventTemplateTokenUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::TimelineEventTemplateTokenUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Used for list segmentation and reporting.
        sig { returns(String) }
        attr_accessor :label

        # The name of the CRM object property. This will populate the CRM object property
        # associated with the event. With enough of these, you can fully build CRM objects
        # via the Timeline API.
        sig { returns(T.nilable(String)) }
        attr_reader :object_property_name

        sig { params(object_property_name: String).void }
        attr_writer :object_property_name

        # If type is `enumeration`, we should have a list of options to choose from.
        sig do
          returns(
            T.nilable(
              T::Array[HubspotSDK::CRM::TimelineEventTemplateTokenOption]
            )
          )
        end
        attr_reader :options

        sig do
          params(
            options:
              T::Array[
                HubspotSDK::CRM::TimelineEventTemplateTokenOption::OrHash
              ]
          ).void
        end
        attr_writer :options

        # State of the token definition for update requests.
        sig do
          params(
            label: String,
            object_property_name: String,
            options:
              T::Array[
                HubspotSDK::CRM::TimelineEventTemplateTokenOption::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Used for list segmentation and reporting.
          label:,
          # The name of the CRM object property. This will populate the CRM object property
          # associated with the event. With enough of these, you can fully build CRM objects
          # via the Timeline API.
          object_property_name: nil,
          # If type is `enumeration`, we should have a list of options to choose from.
          options: nil
        )
        end

        sig do
          override.returns(
            {
              label: String,
              object_property_name: String,
              options:
                T::Array[HubspotSDK::CRM::TimelineEventTemplateTokenOption]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
