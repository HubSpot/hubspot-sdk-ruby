# typed: strong

module HubspotSDK
  module Resources
    class DataStudio
      class Datasource
        sig do
          params(
            body_parts: T::Array[HubspotSDK::DataStudio::BodyPart::OrHash],
            content_disposition:
              HubspotSDK::DataStudio::ContentDisposition::OrHash,
            entity: T.anything,
            fields:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::DataStudio::FormDataBodyPart::OrHash]
              ],
            headers: T::Hash[Symbol, T::Array[String]],
            media_type: HubspotSDK::DataStudio::MediaType::OrHash,
            message_body_workers: T.anything,
            parameterized_headers:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::DataStudio::ParameterizedHeader::OrHash]
              ],
            providers: T.anything,
            parent: HubspotSDK::DataStudio::MultiPart::OrHash,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def create(
          # An array of BodyPart objects, each representing a part of the multipart form
          # data.
          body_parts:,
          content_disposition:,
          # An object representing the entity of the multipart form data, containing the
          # actual data to be processed.
          entity:,
          # An object containing fields of the multipart form data, where each field can
          # have multiple FormDataBodyPart items.
          fields:,
          # An object containing headers associated with the multipart form data, where each
          # header can have multiple string values.
          headers:,
          media_type:,
          # An object representing workers that process the message body of the multipart
          # form data.
          message_body_workers:,
          # An object containing parameterized headers, where each header can have multiple
          # ParameterizedHeader items.
          parameterized_headers:,
          # An object representing providers associated with the multipart form data.
          providers:,
          parent: nil,
          request_options: {}
        )
        end

        sig do
          params(
            datasource_id: Integer,
            body_parts: T::Array[HubspotSDK::DataStudio::BodyPart::OrHash],
            content_disposition:
              HubspotSDK::DataStudio::ContentDisposition::OrHash,
            entity: T.anything,
            fields:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::DataStudio::FormDataBodyPart::OrHash]
              ],
            headers: T::Hash[Symbol, T::Array[String]],
            media_type: HubspotSDK::DataStudio::MediaType::OrHash,
            message_body_workers: T.anything,
            parameterized_headers:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::DataStudio::ParameterizedHeader::OrHash]
              ],
            providers: T.anything,
            parent: HubspotSDK::DataStudio::MultiPart::OrHash,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::DataStudio::DataSourceUpdateResponse)
        end
        def update(
          datasource_id,
          # An array of BodyPart objects, each representing a part of the multipart form
          # data.
          body_parts:,
          content_disposition:,
          # An object representing the entity of the multipart form data, containing the
          # actual data to be processed.
          entity:,
          # An object containing fields of the multipart form data, where each field can
          # have multiple FormDataBodyPart items.
          fields:,
          # An object containing headers associated with the multipart form data, where each
          # header can have multiple string values.
          headers:,
          media_type:,
          # An object representing workers that process the message body of the multipart
          # form data.
          message_body_workers:,
          # An object containing parameterized headers, where each header can have multiple
          # ParameterizedHeader items.
          parameterized_headers:,
          # An object representing providers associated with the multipart form data.
          providers:,
          parent: nil,
          request_options: {}
        )
        end

        sig do
          params(
            datasource_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def delete(datasource_id, request_options: {})
        end

        sig do
          params(
            datasource_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::DataStudio::DataSourceGetResponse)
        end
        def get(datasource_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
