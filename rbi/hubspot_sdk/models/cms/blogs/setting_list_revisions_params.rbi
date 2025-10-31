# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class SettingListRevisionsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::SettingListRevisionsParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig do
            params(
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(after: nil, before: nil, limit: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                after: String,
                before: String,
                limit: Integer,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
