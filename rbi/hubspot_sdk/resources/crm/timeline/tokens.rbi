# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Timeline
        class Tokens
          # Update an existing event type template with new tokens.
          sig do
            params(
              event_template_id: String,
              app_id: Integer,
              label: String,
              name: String,
              type: HubspotSDK::Crm::TimelineEventTemplateToken::Type::OrSymbol,
              created_at: Time,
              object_property_name: String,
              options:
                T::Array[
                  HubspotSDK::Crm::TimelineEventTemplateTokenOption::OrHash
                ],
              updated_at: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::TimelineEventTemplateToken)
          end
          def create(
            # Path param: The event template ID.
            event_template_id,
            # Path param: The ID of the target app.
            app_id:,
            # Body param: Used for list segmentation and reporting.
            label:,
            # Body param: The name of the token referenced in the templates. This must be
            # unique for the specific template. It may only contain alphanumeric characters,
            # periods, dashes, or underscores (. - \_).
            name:,
            # Body param: The data type of the token. You can currently choose from [string,
            # number, date, enumeration].
            type:,
            # Body param: The date and time that the Event Template Token was created, as an
            # ISO 8601 timestamp. Will be null if the template was created before Feb
            # 18th, 2020.
            created_at: nil,
            # Body param: The name of the CRM object property. This will populate the CRM
            # object property associated with the event. With enough of these, you can fully
            # build CRM objects via the Timeline API.
            object_property_name: nil,
            # Body param: If type is `enumeration`, we should have a list of options to choose
            # from.
            options: nil,
            # Body param: The date and time that the Event Template Token was last updated, as
            # an ISO 8601 timestamp. Will be null if the template was created before Feb
            # 18th, 2020.
            updated_at: nil,
            request_options: {}
          )
          end

          # Update an event type template token, specified by token name.
          sig do
            params(
              token_name: String,
              app_id: Integer,
              event_template_id: String,
              label: String,
              object_property_name: String,
              options:
                T::Array[
                  HubspotSDK::Crm::TimelineEventTemplateTokenOption::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::TimelineEventTemplateToken)
          end
          def update(
            # Path param: The token name.
            token_name,
            # Path param: The ID of the target app.
            app_id:,
            # Path param: The event template ID.
            event_template_id:,
            # Body param: Used for list segmentation and reporting.
            label:,
            # Body param: The name of the CRM object property. This will populate the CRM
            # object property associated with the event. With enough of these, you can fully
            # build CRM objects via the Timeline API.
            object_property_name: nil,
            # Body param: If type is `enumeration`, we should have a list of options to choose
            # from.
            options: nil,
            request_options: {}
          )
          end

          # Delete an existing token from a specific event type template.
          sig do
            params(
              token_name: String,
              app_id: Integer,
              event_template_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The token name.
            token_name,
            # The ID of the target app.
            app_id:,
            # The event template ID.
            event_template_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
