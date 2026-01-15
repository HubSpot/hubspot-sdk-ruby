# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Projects
          class Associations
            # @overload update(association_type, project_id:, to_object_type:, to_object_id:, request_options: {})
            #
            # @param association_type [String]
            # @param project_id [String]
            # @param to_object_type [String]
            # @param to_object_id [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
            #
            # @see HubspotSDK::Models::Crm::Objects::Projects::AssociationUpdateParams
            def update(association_type, params)
              parsed, options = HubspotSDK::Crm::Objects::Projects::AssociationUpdateParams.dump_request(params)
              project_id =
                parsed.delete(:project_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              to_object_type =
                parsed.delete(:to_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              to_object_id =
                parsed.delete(:to_object_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :put,
                path: [
                  "crm/objects/v3/projects/%1$s/associations/%2$s/%3$s/%4$s",
                  project_id,
                  to_object_type,
                  to_object_id,
                  association_type
                ],
                model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
                options: options
              )
            end

            # @overload list(to_object_type, project_id:, after: nil, include_fa: nil, limit: nil, request_options: {})
            #
            # @param to_object_type [String] Path param
            #
            # @param project_id [String] Path param
            #
            # @param after [String] Query param
            #
            # @param include_fa [Boolean] Query param
            #
            # @param limit [Integer] Query param
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::AssociatedID>]
            #
            # @see HubspotSDK::Models::Crm::Objects::Projects::AssociationListParams
            def list(to_object_type, params)
              parsed, options = HubspotSDK::Crm::Objects::Projects::AssociationListParams.dump_request(params)
              project_id =
                parsed.delete(:project_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["crm/objects/v3/projects/%1$s/associations/%2$s", project_id, to_object_type],
                query: parsed.transform_keys(include_fa: "includeFA"),
                page: HubspotSDK::Internal::Page,
                model: HubspotSDK::Crm::AssociatedID,
                options: options
              )
            end

            # @overload delete(association_type, project_id:, to_object_type:, to_object_id:, request_options: {})
            #
            # @param association_type [String]
            # @param project_id [String]
            # @param to_object_type [String]
            # @param to_object_id [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Crm::Objects::Projects::AssociationDeleteParams
            def delete(association_type, params)
              parsed, options = HubspotSDK::Crm::Objects::Projects::AssociationDeleteParams.dump_request(params)
              project_id =
                parsed.delete(:project_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              to_object_type =
                parsed.delete(:to_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              to_object_id =
                parsed.delete(:to_object_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :delete,
                path: [
                  "crm/objects/v3/projects/%1$s/associations/%2$s/%3$s/%4$s",
                  project_id,
                  to_object_type,
                  to_object_id,
                  association_type
                ],
                model: NilClass,
                options: options
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
  end
end
