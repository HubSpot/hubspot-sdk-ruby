# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class DataSourceUpdateResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::DataSourceUpdateResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the data source. It is an integer formatted as int64.
        sig { returns(Integer) }
        attr_accessor :datasource_id

        # The name of the data source. It is a string.
        sig { returns(String) }
        attr_accessor :datasource_name

        # A URL string that provides a preview link for the data source.
        sig { returns(String) }
        attr_accessor :preview_link

        sig do
          params(
            datasource_id: Integer,
            datasource_name: String,
            preview_link: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the data source. It is an integer formatted as int64.
          datasource_id:,
          # The name of the data source. It is a string.
          datasource_name:,
          # A URL string that provides a preview link for the data source.
          preview_link:
        )
        end

        sig do
          override.returns(
            {
              datasource_id: Integer,
              datasource_name: String,
              preview_link: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
