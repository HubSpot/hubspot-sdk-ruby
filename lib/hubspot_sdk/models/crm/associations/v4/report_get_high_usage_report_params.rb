# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        module V4
          # @see HubspotSDK::Resources::Crm::Associations::V4::Report#get_high_usage_report
          class ReportGetHighUsageReportParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
