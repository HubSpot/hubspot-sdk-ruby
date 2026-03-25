# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class DataSourceGetResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::DataSourceGetResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of FileColumn objects representing the columns in the data source.
        sig { returns(T::Array[HubspotSDK::DataStudio::FileColumn]) }
        attr_accessor :columns

        # The creation date and time of the data source, represented as a string.
        sig { returns(String) }
        attr_accessor :created_at

        # The unique identifier for the data source, represented as a 64-bit integer.
        sig { returns(Integer) }
        attr_accessor :datasource_id

        # The name of the data source, represented as a string.
        sig { returns(String) }
        attr_accessor :datasource_name

        # The type of the data source, which is a string with a valid value of 'FILE'.
        sig do
          returns(
            HubspotSDK::DataStudio::DataSourceGetResponse::DatasourceType::TaggedSymbol
          )
        end
        attr_accessor :datasource_type

        # The status of the last data ingestion process, represented as a string. Valid
        # values include 'SUCCESSFUL', 'IN_PROGRESS', and 'FAILED'.
        sig do
          returns(
            HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus::TaggedSymbol
          )
        end
        attr_accessor :last_ingestion_status

        sig do
          params(
            columns: T::Array[HubspotSDK::DataStudio::FileColumn::OrHash],
            created_at: String,
            datasource_id: Integer,
            datasource_name: String,
            datasource_type:
              HubspotSDK::DataStudio::DataSourceGetResponse::DatasourceType::OrSymbol,
            last_ingestion_status:
              HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of FileColumn objects representing the columns in the data source.
          columns:,
          # The creation date and time of the data source, represented as a string.
          created_at:,
          # The unique identifier for the data source, represented as a 64-bit integer.
          datasource_id:,
          # The name of the data source, represented as a string.
          datasource_name:,
          # The type of the data source, which is a string with a valid value of 'FILE'.
          datasource_type:,
          # The status of the last data ingestion process, represented as a string. Valid
          # values include 'SUCCESSFUL', 'IN_PROGRESS', and 'FAILED'.
          last_ingestion_status:
        )
        end

        sig do
          override.returns(
            {
              columns: T::Array[HubspotSDK::DataStudio::FileColumn],
              created_at: String,
              datasource_id: Integer,
              datasource_name: String,
              datasource_type:
                HubspotSDK::DataStudio::DataSourceGetResponse::DatasourceType::TaggedSymbol,
              last_ingestion_status:
                HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of the data source, which is a string with a valid value of 'FILE'.
        module DatasourceType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::DataStudio::DataSourceGetResponse::DatasourceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FILE =
            T.let(
              :FILE,
              HubspotSDK::DataStudio::DataSourceGetResponse::DatasourceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::DataStudio::DataSourceGetResponse::DatasourceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the last data ingestion process, represented as a string. Valid
        # values include 'SUCCESSFUL', 'IN_PROGRESS', and 'FAILED'.
        module LastIngestionStatus
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FAILED =
            T.let(
              :FAILED,
              HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :IN_PROGRESS,
              HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus::TaggedSymbol
            )
          SUCCESSFUL =
            T.let(
              :SUCCESSFUL,
              HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
