# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        class TableExportDraftParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Hubdb::TableExportDraftParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The file format to export. Possible values include `CSV`, `XLSX`, and `XLS`.
          sig { returns(T.nilable(String)) }
          attr_reader :format_

          sig { params(format_: String).void }
          attr_writer :format_

          sig do
            params(
              format_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The file format to export. Possible values include `CSV`, `XLSX`, and `XLS`.
            format_: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { format_: String, request_options: HubspotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
