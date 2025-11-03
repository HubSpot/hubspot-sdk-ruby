# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class V4
          # @return [HubspotSDK::Resources::Crm::Associations::V4::Batch]
          attr_reader :batch

          # @return [HubspotSDK::Resources::Crm::Associations::V4::Report]
          attr_reader :report

          # Create the default (most generic) association type between two object types
          #
          # @overload create(to_object_id, from_object_type:, from_object_id:, to_object_type:, request_options: {})
          #
          # @param to_object_id [String]
          # @param from_object_type [String]
          # @param from_object_id [String]
          # @param to_object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponsePublicDefaultAssociation]
          #
          # @see HubspotSDK::Models::Crm::Associations::V4CreateParams
          def create(to_object_id, params)
            parsed, options = HubspotSDK::Crm::Associations::V4CreateParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            from_object_id =
              parsed.delete(:from_object_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            to_object_type =
              parsed.delete(:to_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: [
                "crm/v4/objects/%1$s/%2$s/associations/default/%3$s/%4$s",
                from_object_type,
                from_object_id,
                to_object_type,
                to_object_id
              ],
              model: HubspotSDK::Crm::BatchResponsePublicDefaultAssociation,
              options: options
            )
          end

          # Set association labels between two records.
          #
          # @overload update(to_object_id, object_type:, object_id_:, to_object_type:, body:, request_options: {})
          #
          # @param to_object_id [String] Path param:
          #
          # @param object_type [String] Path param:
          #
          # @param object_id_ [String] Path param:
          #
          # @param to_object_type [String] Path param:
          #
          # @param body [Array<HubspotSDK::Models::AssociationSpec>] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CreatedResponseLabelsBetweenObjectPair]
          #
          # @see HubspotSDK::Models::Crm::Associations::V4UpdateParams
          def update(to_object_id, params)
            parsed, options = HubspotSDK::Crm::Associations::V4UpdateParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            to_object_type =
              parsed.delete(:to_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: [
                "crm/v4/objects/%1$s/%2$s/associations/%3$s/%4$s",
                object_type,
                object_id_,
                to_object_type,
                to_object_id
              ],
              body: parsed[:body],
              model: HubspotSDK::Crm::CreatedResponseLabelsBetweenObjectPair,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Associations::V4ListParams} for more details.
          #
          # List all associations of an object by object type. Limit 500 per call.
          #
          # @overload list(to_object_type, object_type:, object_id_:, after: nil, limit: nil, request_options: {})
          #
          # @param to_object_type [String] Path param:
          #
          # @param object_type [String] Path param:
          #
          # @param object_id_ [String] Path param:
          #
          # @param after [String] Query param: The paging cursor token of the last successfully read resource will
          #
          # @param limit [Integer] Query param: The maximum number of results to display per page.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
          #
          # @see HubspotSDK::Models::Crm::Associations::V4ListParams
          def list(to_object_type, params)
            parsed, options = HubspotSDK::Crm::Associations::V4ListParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/v4/objects/%1$s/%2$s/associations/%3$s", object_type, object_id_, to_object_type],
              query: parsed,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::MultiAssociatedObjectWithLabel,
              options: options
            )
          end

          # deletes all associations between two records.
          #
          # @overload delete(to_object_id, object_type:, object_id_:, to_object_type:, request_options: {})
          #
          # @param to_object_id [String]
          # @param object_type [String]
          # @param object_id_ [String]
          # @param to_object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Associations::V4DeleteParams
          def delete(to_object_id, params)
            parsed, options = HubspotSDK::Crm::Associations::V4DeleteParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            to_object_type =
              parsed.delete(:to_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "crm/v4/objects/%1$s/%2$s/associations/%3$s/%4$s",
                object_type,
                object_id_,
                to_object_type,
                to_object_id
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
            @batch = HubspotSDK::Resources::Crm::Associations::V4::Batch.new(client: client)
            @report = HubspotSDK::Resources::Crm::Associations::V4::Report.new(client: client)
          end
        end
      end
    end
  end
end
