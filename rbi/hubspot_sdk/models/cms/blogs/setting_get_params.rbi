# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class SettingGetParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::SettingGetParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :blog_id

          sig do
            params(
              blog_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(blog_id:, request_options: {})
          end

          sig do
            override.returns(
              { blog_id: String, request_options: HubSpotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
