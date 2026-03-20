# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Tasks
          # @return [HubspotSDK::Resources::Crm::Objects::Tasks::Batch]
          attr_reader :batch

          # Move an Object identified by `{taskId}` to the recycling bin.
          #
          # @overload delete(object_id_, object_type:, request_options: {})
          #
          # @param object_id_ [String] Unique Task Id
          #
          # @param object_type [String] Object type.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Objects::TaskDeleteParams
          def delete(object_id_, params)
            parsed, options = HubspotSDK::Crm::Objects::TaskDeleteParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["crm/objects/2026-03/%1$s/%2$s", object_type, object_id_],
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubspotSDK::Resources::Crm::Objects::Tasks::Batch.new(client: client)
          end
        end
      end
    end
  end
end
