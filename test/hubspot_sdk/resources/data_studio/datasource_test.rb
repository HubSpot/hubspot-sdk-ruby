# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::DataStudio::DatasourceTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.data_studio.datasource.create(
        body_parts: [
          {
            contentDisposition: {
              creationDate: "2019-12-27T18:11:19.117Z",
              fileName: "fileName",
              modificationDate: "2019-12-27T18:11:19.117Z",
              parameters: {foo: "string"},
              readDate: "2019-12-27T18:11:19.117Z",
              size: 0,
              type: "type"
            },
            entity: {},
            headers: {foo: ["string"]},
            mediaType: {
              parameters: {foo: "string"},
              subtype: "subtype",
              type: "type",
              wildcardSubtype: true,
              wildcardType: true
            },
            messageBodyWorkers: {},
            parameterizedHeaders: {foo: [{parameters: {foo: "string"}, value: "value"}]},
            providers: {}
          }
        ],
        content_disposition: {
          creationDate: "2019-12-27T18:11:19.117Z",
          fileName: "fileName",
          modificationDate: "2019-12-27T18:11:19.117Z",
          parameters: {foo: "string"},
          readDate: "2019-12-27T18:11:19.117Z",
          size: 0,
          type: "type"
        },
        entity: {},
        fields: {
          foo: [
            {
              contentDisposition: {
                creationDate: "2019-12-27T18:11:19.117Z",
                fileName: "fileName",
                modificationDate: "2019-12-27T18:11:19.117Z",
                parameters: {foo: "string"},
                readDate: "2019-12-27T18:11:19.117Z",
                size: 0,
                type: "type"
              },
              entity: {},
              formDataContentDisposition: {
                creationDate: "2019-12-27T18:11:19.117Z",
                fileName: "fileName",
                modificationDate: "2019-12-27T18:11:19.117Z",
                name: "name",
                parameters: {foo: "string"},
                readDate: "2019-12-27T18:11:19.117Z",
                size: 0,
                type: "type"
              },
              headers: {foo: ["string"]},
              mediaType: {
                parameters: {foo: "string"},
                subtype: "subtype",
                type: "type",
                wildcardSubtype: true,
                wildcardType: true
              },
              messageBodyWorkers: {},
              name: "name",
              parameterizedHeaders: {foo: [{parameters: {foo: "string"}, value: "value"}]},
              providers: {},
              simple: true,
              value: "value"
            }
          ]
        },
        headers: {foo: ["string"]},
        media_type: {
          parameters: {foo: "string"},
          subtype: "subtype",
          type: "type",
          wildcardSubtype: true,
          wildcardType: true
        },
        message_body_workers: {},
        parameterized_headers: {foo: [{parameters: {foo: "string"}, value: "value"}]},
        providers: {}
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.data_studio.datasource.update(
        0,
        body_parts: [
          {
            contentDisposition: {
              creationDate: "2019-12-27T18:11:19.117Z",
              fileName: "fileName",
              modificationDate: "2019-12-27T18:11:19.117Z",
              parameters: {foo: "string"},
              readDate: "2019-12-27T18:11:19.117Z",
              size: 0,
              type: "type"
            },
            entity: {},
            headers: {foo: ["string"]},
            mediaType: {
              parameters: {foo: "string"},
              subtype: "subtype",
              type: "type",
              wildcardSubtype: true,
              wildcardType: true
            },
            messageBodyWorkers: {},
            parameterizedHeaders: {foo: [{parameters: {foo: "string"}, value: "value"}]},
            providers: {}
          }
        ],
        content_disposition: {
          creationDate: "2019-12-27T18:11:19.117Z",
          fileName: "fileName",
          modificationDate: "2019-12-27T18:11:19.117Z",
          parameters: {foo: "string"},
          readDate: "2019-12-27T18:11:19.117Z",
          size: 0,
          type: "type"
        },
        entity: {},
        fields: {
          foo: [
            {
              contentDisposition: {
                creationDate: "2019-12-27T18:11:19.117Z",
                fileName: "fileName",
                modificationDate: "2019-12-27T18:11:19.117Z",
                parameters: {foo: "string"},
                readDate: "2019-12-27T18:11:19.117Z",
                size: 0,
                type: "type"
              },
              entity: {},
              formDataContentDisposition: {
                creationDate: "2019-12-27T18:11:19.117Z",
                fileName: "fileName",
                modificationDate: "2019-12-27T18:11:19.117Z",
                name: "name",
                parameters: {foo: "string"},
                readDate: "2019-12-27T18:11:19.117Z",
                size: 0,
                type: "type"
              },
              headers: {foo: ["string"]},
              mediaType: {
                parameters: {foo: "string"},
                subtype: "subtype",
                type: "type",
                wildcardSubtype: true,
                wildcardType: true
              },
              messageBodyWorkers: {},
              name: "name",
              parameterizedHeaders: {foo: [{parameters: {foo: "string"}, value: "value"}]},
              providers: {},
              simple: true,
              value: "value"
            }
          ]
        },
        headers: {foo: ["string"]},
        media_type: {
          parameters: {foo: "string"},
          subtype: "subtype",
          type: "type",
          wildcardSubtype: true,
          wildcardType: true
        },
        message_body_workers: {},
        parameterized_headers: {foo: [{parameters: {foo: "string"}, value: "value"}]},
        providers: {}
      )

    assert_pattern do
      response => HubspotSDK::DataStudio::DataSourceUpdateResponse
    end

    assert_pattern do
      response => {
        datasource_id: Integer,
        datasource_name: String,
        preview_link: String
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.data_studio.datasource.delete(0)

    assert_pattern do
      response => StringIO
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.data_studio.datasource.get(0)

    assert_pattern do
      response => HubspotSDK::DataStudio::DataSourceGetResponse
    end

    assert_pattern do
      response => {
        columns: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::DataStudio::FileColumn]),
        created_at: String,
        datasource_id: Integer,
        datasource_name: String,
        datasource_type: HubspotSDK::DataStudio::DataSourceGetResponse::DatasourceType,
        last_ingestion_status: HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus
      }
    end
  end
end
