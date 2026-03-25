# frozen_string_literal: true

module HubspotSDK
  module Resources
    class DataStudio
      class Datasource
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::DataStudio::DatasourceCreateParams} for more details.
        #
        # @overload create(body_parts:, content_disposition:, entity:, fields:, headers:, media_type:, message_body_workers:, parameterized_headers:, providers:, parent: nil, request_options: {})
        #
        # @param body_parts [Array<HubspotSDK::Models::DataStudio::BodyPart>] An array of BodyPart objects, each representing a part of the multipart form dat
        #
        # @param content_disposition [HubspotSDK::Models::DataStudio::ContentDisposition]
        #
        # @param entity [Object] An object representing the entity of the multipart form data, containing the act
        #
        # @param fields [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::FormDataBodyPart>}] An object containing fields of the multipart form data, where each field can hav
        #
        # @param headers [Hash{Symbol=>Array<String>}] An object containing headers associated with the multipart form data, where each
        #
        # @param media_type [HubspotSDK::Models::DataStudio::MediaType]
        #
        # @param message_body_workers [Object] An object representing workers that process the message body of the multipart fo
        #
        # @param parameterized_headers [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}] An object containing parameterized headers, where each header can have multiple
        #
        # @param providers [Object] An object representing providers associated with the multipart form data.
        #
        # @param parent [HubspotSDK::Models::DataStudio::MultiPart]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::DataStudio::DatasourceCreateParams
        def create(params)
          parsed, options = HubspotSDK::DataStudio::DatasourceCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "data-studio/2026-03/data-source",
            headers: {"content-type" => "multipart/form-data", "accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::DataStudio::DatasourceUpdateParams} for more details.
        #
        # @overload update(datasource_id, body_parts:, content_disposition:, entity:, fields:, headers:, media_type:, message_body_workers:, parameterized_headers:, providers:, parent: nil, request_options: {})
        #
        # @param datasource_id [Integer]
        #
        # @param body_parts [Array<HubspotSDK::Models::DataStudio::BodyPart>] An array of BodyPart objects, each representing a part of the multipart form dat
        #
        # @param content_disposition [HubspotSDK::Models::DataStudio::ContentDisposition]
        #
        # @param entity [Object] An object representing the entity of the multipart form data, containing the act
        #
        # @param fields [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::FormDataBodyPart>}] An object containing fields of the multipart form data, where each field can hav
        #
        # @param headers [Hash{Symbol=>Array<String>}] An object containing headers associated with the multipart form data, where each
        #
        # @param media_type [HubspotSDK::Models::DataStudio::MediaType]
        #
        # @param message_body_workers [Object] An object representing workers that process the message body of the multipart fo
        #
        # @param parameterized_headers [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}] An object containing parameterized headers, where each header can have multiple
        #
        # @param providers [Object] An object representing providers associated with the multipart form data.
        #
        # @param parent [HubspotSDK::Models::DataStudio::MultiPart]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::DataStudio::DataSourceUpdateResponse]
        #
        # @see HubspotSDK::Models::DataStudio::DatasourceUpdateParams
        def update(datasource_id, params)
          parsed, options = HubspotSDK::DataStudio::DatasourceUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["data-studio/2026-03/data-source/%1$s", datasource_id],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubspotSDK::DataStudio::DataSourceUpdateResponse,
            options: options
          )
        end

        # @overload delete(datasource_id, request_options: {})
        #
        # @param datasource_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::DataStudio::DatasourceDeleteParams
        def delete(datasource_id, params = {})
          @client.request(
            method: :delete,
            path: ["data-studio/2026-03/data-source/%1$s", datasource_id],
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: params[:request_options]
          )
        end

        # @overload get(datasource_id, request_options: {})
        #
        # @param datasource_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::DataStudio::DataSourceGetResponse]
        #
        # @see HubspotSDK::Models::DataStudio::DatasourceGetParams
        def get(datasource_id, params = {})
          @client.request(
            method: :get,
            path: ["data-studio/2026-03/data-source/%1$s", datasource_id],
            model: HubspotSDK::DataStudio::DataSourceGetResponse,
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
