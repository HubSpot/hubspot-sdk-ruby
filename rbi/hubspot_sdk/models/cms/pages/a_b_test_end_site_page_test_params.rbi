# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Pages
        class ABTestEndSitePageTestParams < HubspotSDK::Models::Cms::AbTestEndRequestVNext
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Pages::ABTestEndSitePageTestParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(request_options: {})
          end

          sig do
            override.returns({ request_options: HubspotSDK::RequestOptions })
          end
          def to_hash
          end
        end
      end
    end
  end
end
