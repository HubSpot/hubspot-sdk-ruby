# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Forms
        # Add a new `hubspot` form
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Marketing::FormDefinitionBase
          )
        end
        def create(request_options: {})
        end

        # Update some of the form definition components
        sig do
          params(
            form_id: String,
            archived: T::Boolean,
            configuration:
              HubspotSDK::Marketing::HubSpotFormConfiguration::OrHash,
            display_options: HubspotSDK::Marketing::FormDisplayOptions::OrHash,
            field_groups: T::Array[HubspotSDK::Marketing::FieldGroup::OrHash],
            legal_consent_options:
              T.any(
                HubspotSDK::Marketing::LegalConsentOptionsNone::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess::OrHash
              ),
            name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::FormDefinitionBase)
        end
        def update(
          # The ID of the form to update.
          form_id,
          # Whether this form is archived.
          archived: nil,
          configuration: nil,
          # Options for styling the form.
          display_options: nil,
          # The fields in the form, grouped in rows.
          field_groups: nil,
          legal_consent_options: nil,
          # The name of the form. Expected to be unique for a hub.
          name: nil,
          request_options: {}
        )
        end

        # Returns a list of forms based on the search filters. By default, it returns the
        # first 20 `hubspot` forms
        sig do
          params(
            after: String,
            archived: T::Boolean,
            form_types:
              T::Array[
                HubspotSDK::Marketing::FormListParams::FormType::OrSymbol
              ],
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Marketing::HubSpotFormDefinition
            ]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          # The form types to be included in the results.
          form_types: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        # Archive a form definition. New submissions will not be accepted and the form
        # definition will be permanently deleted after 3 months.
        sig do
          params(
            form_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The ID of the form to archive.
          form_id,
          request_options: {}
        )
        end

        # Returns a form based on the form ID provided.
        sig do
          params(
            form_id: String,
            archived: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::FormDefinitionBase)
        end
        def get(
          # The unique identifier of the form
          form_id,
          # Whether to return only results that have been archived.
          archived: nil,
          request_options: {}
        )
        end

        # Update all fields of a hubspot form definition.
        sig do
          params(
            form_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::FormDefinitionBase)
        end
        def replace(form_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
