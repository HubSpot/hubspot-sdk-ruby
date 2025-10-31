# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Forms
        # Add a new `hubspot` form
        #
        # @overload create(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::FormDefinitionBase]
        #
        # @see HubspotSDK::Models::Marketing::FormCreateParams
        def create(params = {})
          @client.request(
            method: :post,
            path: "marketing/v3/forms/",
            model: HubspotSDK::Marketing::FormDefinitionBase,
            options: params[:request_options]
          )
        end

        # Update some of the form definition components
        #
        # @overload update(form_id, archived: nil, configuration: nil, display_options: nil, field_groups: nil, legal_consent_options: nil, name: nil, request_options: {})
        #
        # @param form_id [String] The ID of the form to update.
        #
        # @param archived [Boolean] Whether this form is archived.
        #
        # @param configuration [HubspotSDK::Models::Marketing::HubSpotFormConfiguration]
        #
        # @param display_options [HubspotSDK::Models::Marketing::FormDisplayOptions] Options for styling the form.
        #
        # @param field_groups [Array<HubspotSDK::Models::Marketing::FieldGroup>] The fields in the form, grouped in rows.
        #
        # @param legal_consent_options [HubspotSDK::Models::Marketing::LegalConsentOptionsNone, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest, HubspotSDK::Models::Marketing::LegalConsentOptionsExplicitConsentToProcess, HubspotSDK::Models::Marketing::LegalConsentOptionsImplicitConsentToProcess]
        #
        # @param name [String] The name of the form. Expected to be unique for a hub.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::FormDefinitionBase]
        #
        # @see HubspotSDK::Models::Marketing::FormUpdateParams
        def update(form_id, params = {})
          parsed, options = HubspotSDK::Marketing::FormUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["marketing/v3/forms/%1$s", form_id],
            body: parsed,
            model: HubspotSDK::Marketing::FormDefinitionBase,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::FormListParams} for more details.
        #
        # Returns a list of forms based on the search filters. By default, it returns the
        # first 20 `hubspot` forms
        #
        # @overload list(after: nil, archived: nil, form_types: nil, limit: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param form_types [Array<Symbol, HubspotSDK::Models::Marketing::FormListParams::FormType>] The form types to be included in the results.
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::HubSpotFormDefinition>]
        #
        # @see HubspotSDK::Models::Marketing::FormListParams
        def list(params = {})
          parsed, options = HubspotSDK::Marketing::FormListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "marketing/v3/forms/",
            query: parsed.transform_keys(form_types: "formTypes"),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Marketing::HubSpotFormDefinition,
            options: options
          )
        end

        # Archive a form definition. New submissions will not be accepted and the form
        # definition will be permanently deleted after 3 months.
        #
        # @overload delete(form_id, request_options: {})
        #
        # @param form_id [String] The ID of the form to archive.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::FormDeleteParams
        def delete(form_id, params = {})
          @client.request(
            method: :delete,
            path: ["marketing/v3/forms/%1$s", form_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Returns a form based on the form ID provided.
        #
        # @overload get(form_id, archived: nil, request_options: {})
        #
        # @param form_id [String] The unique identifier of the form
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::FormDefinitionBase]
        #
        # @see HubspotSDK::Models::Marketing::FormGetParams
        def get(form_id, params = {})
          parsed, options = HubspotSDK::Marketing::FormGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["marketing/v3/forms/%1$s", form_id],
            query: parsed,
            model: HubspotSDK::Marketing::FormDefinitionBase,
            options: options
          )
        end

        # Update all fields of a hubspot form definition.
        #
        # @overload replace(form_id, request_options: {})
        #
        # @param form_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::FormDefinitionBase]
        #
        # @see HubspotSDK::Models::Marketing::FormReplaceParams
        def replace(form_id, params = {})
          @client.request(
            method: :put,
            path: ["marketing/v3/forms/%1$s", form_id],
            model: HubspotSDK::Marketing::FormDefinitionBase,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
