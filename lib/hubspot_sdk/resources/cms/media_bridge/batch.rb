# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Batch
          # Create a batch of properties of the specified object type.
          #
          # @overload create(object_type, app_id:, inputs:, request_options: {})
          #
          # @param object_type [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param inputs [Array<HubspotSDK::Models::PropertyCreate>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseProperty]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::BatchCreateParams
          def create(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::BatchCreateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/2026-03/%1$s/properties/%2$s/batch/create", app_id, object_type],
              body: parsed,
              model: HubspotSDK::Cms::BatchResponseProperty,
              options: options
            )
          end

          # Archive a batch of existing properties for the specified types.
          #
          # @overload delete(object_type, app_id:, inputs:, request_options: {})
          #
          # @param object_type [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param inputs [Array<HubspotSDK::Models::PropertyName>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::BatchDeleteParams
          def delete(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::BatchDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/2026-03/%1$s/properties/%2$s/batch/archive", app_id, object_type],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Get the details for a batch of properties for a specified object type.
          #
          # @overload get(object_type, app_id:, archived:, data_sensitivity:, inputs:, request_options: {})
          #
          # @param object_type [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param archived [Boolean] Body param
          #
          # @param data_sensitivity [Symbol, HubspotSDK::Models::BatchReadInputPropertyName::DataSensitivity] Body param
          #
          # @param inputs [Array<HubspotSDK::Models::PropertyName>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseProperty]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::BatchGetParams
          def get(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::BatchGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/2026-03/%1$s/properties/%2$s/batch/read", app_id, object_type],
              body: parsed,
              model: HubspotSDK::Cms::BatchResponseProperty,
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
