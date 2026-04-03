# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::FileAssets#get_import_task_status
      class FileAssetGetImportTaskStatusParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute task_id
        #
        #   @return [String]
        required :task_id, String

        # @!method initialize(task_id:, request_options: {})
        #   @param task_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
