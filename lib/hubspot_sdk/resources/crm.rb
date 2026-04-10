# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      # @return [HubSpotSDK::Resources::Crm::AppUninstalls]
      attr_reader :app_uninstalls

      # @return [HubSpotSDK::Resources::Crm::Associations]
      attr_reader :associations

      # @return [HubSpotSDK::Resources::Crm::AssociationsSchema]
      attr_reader :associations_schema

      # @return [HubSpotSDK::Resources::Crm::DealSplits]
      attr_reader :deal_splits

      # @return [HubSpotSDK::Resources::Crm::Exports]
      attr_reader :exports

      # @return [HubSpotSDK::Resources::Crm::Extensions]
      attr_reader :extensions

      # @return [HubSpotSDK::Resources::Crm::FeatureFlags]
      attr_reader :feature_flags

      # @return [HubSpotSDK::Resources::Crm::Imports]
      attr_reader :imports

      # @return [HubSpotSDK::Resources::Crm::Limits]
      attr_reader :limits

      # @return [HubSpotSDK::Resources::Crm::Lists]
      attr_reader :lists

      # @return [HubSpotSDK::Resources::Crm::ObjectLibrary]
      attr_reader :object_library

      # @return [HubSpotSDK::Resources::Crm::ObjectSchemas]
      attr_reader :object_schemas

      # @return [HubSpotSDK::Resources::Crm::Objects]
      attr_reader :objects

      # @return [HubSpotSDK::Resources::Crm::Owners]
      attr_reader :owners

      # @return [HubSpotSDK::Resources::Crm::Pipelines]
      attr_reader :pipelines

      # @return [HubSpotSDK::Resources::Crm::Properties]
      attr_reader :properties

      # @return [HubSpotSDK::Resources::Crm::PropertiesValidations]
      attr_reader :properties_validations

      # @return [HubSpotSDK::Resources::Crm::Timeline]
      attr_reader :timeline

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @app_uninstalls = HubSpotSDK::Resources::Crm::AppUninstalls.new(client: client)
        @associations = HubSpotSDK::Resources::Crm::Associations.new(client: client)
        @associations_schema = HubSpotSDK::Resources::Crm::AssociationsSchema.new(client: client)
        @deal_splits = HubSpotSDK::Resources::Crm::DealSplits.new(client: client)
        @exports = HubSpotSDK::Resources::Crm::Exports.new(client: client)
        @extensions = HubSpotSDK::Resources::Crm::Extensions.new(client: client)
        @feature_flags = HubSpotSDK::Resources::Crm::FeatureFlags.new(client: client)
        @imports = HubSpotSDK::Resources::Crm::Imports.new(client: client)
        @limits = HubSpotSDK::Resources::Crm::Limits.new(client: client)
        @lists = HubSpotSDK::Resources::Crm::Lists.new(client: client)
        @object_library = HubSpotSDK::Resources::Crm::ObjectLibrary.new(client: client)
        @object_schemas = HubSpotSDK::Resources::Crm::ObjectSchemas.new(client: client)
        @objects = HubSpotSDK::Resources::Crm::Objects.new(client: client)
        @owners = HubSpotSDK::Resources::Crm::Owners.new(client: client)
        @pipelines = HubSpotSDK::Resources::Crm::Pipelines.new(client: client)
        @properties = HubSpotSDK::Resources::Crm::Properties.new(client: client)
        @properties_validations = HubSpotSDK::Resources::Crm::PropertiesValidations.new(client: client)
        @timeline = HubSpotSDK::Resources::Crm::Timeline.new(client: client)
      end
    end
  end
end
