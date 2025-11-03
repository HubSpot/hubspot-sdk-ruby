# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class FeedbackSubmissions
          # @return [HubspotSDK::Resources::Crm::Objects::FeedbackSubmissions::Batch]
          attr_reader :batch

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::FeedbackSubmissionListParams} for more
          # details.
          #
          # Read a page of feedback submissions. Control what is returned via the
          # `properties` query param.
          #
          # @overload list(after: nil, archived: nil, associations: nil, limit: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          # @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
          #
          # @see HubspotSDK::Models::Crm::Objects::FeedbackSubmissionListParams
          def list(params = {})
            parsed, options = HubspotSDK::Crm::Objects::FeedbackSubmissionListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm/v3/objects/feedback_submissions",
              query: parsed.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::FeedbackSubmissionGetParams} for more
          # details.
          #
          # Read an Object identified by `{feedbackSubmissionId}`. `{feedbackSubmissionId}`
          # refers to the internal object ID by default, or optionally any unique property
          # value as specified by the `idProperty` query param. Control what is returned via
          # the `properties` query param.
          #
          # @overload get(feedback_submission_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param feedback_submission_id [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          # @param id_property [String] The name of a property whose values are unique for this object
          #
          # @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          # @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubspotSDK::Models::Crm::Objects::FeedbackSubmissionGetParams
          def get(feedback_submission_id, params = {})
            parsed, options = HubspotSDK::Crm::Objects::FeedbackSubmissionGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/objects/feedback_submissions/%1$s", feedback_submission_id],
              query: parsed.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # @overload search(after: nil, filter_groups: nil, limit: nil, properties: nil, query: nil, sorts: nil, request_options: {})
          #
          # @param after [String] A paging cursor token for retrieving subsequent pages.
          #
          # @param filter_groups [Array<HubspotSDK::Models::Crm::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
          #
          # @param limit [Integer] The maximum results to return, up to 200 objects.
          #
          # @param properties [Array<String>] A list of property names to include in the response.
          #
          # @param query [String] The search query string, up to 3000 characters.
          #
          # @param sorts [Array<String>] Specifies sorting order based on object properties.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponseWithTotalSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::FeedbackSubmissionSearchParams
          def search(params = {})
            parsed, options = HubspotSDK::Crm::Objects::FeedbackSubmissionSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/feedback_submissions/search",
              body: parsed,
              model: HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubspotSDK::Resources::Crm::Objects::FeedbackSubmissions::Batch.new(client: client)
          end
        end
      end
    end
  end
end
