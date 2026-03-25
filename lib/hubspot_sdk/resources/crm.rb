# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      # @return [HubspotSDK::Resources::Crm::AppUninstalls]
      attr_reader :app_uninstalls

      # @return [HubspotSDK::Resources::Crm::Associations]
      attr_reader :associations

      # @return [HubspotSDK::Resources::Crm::AssociationsSchema]
      attr_reader :associations_schema

      # @return [HubspotSDK::Resources::Crm::DealSplits]
      attr_reader :deal_splits

      # @return [HubspotSDK::Resources::Crm::Exports]
      attr_reader :exports

      # @return [HubspotSDK::Resources::Crm::Extensions]
      attr_reader :extensions

      # @return [HubspotSDK::Resources::Crm::Imports]
      attr_reader :imports

      # @return [HubspotSDK::Resources::Crm::Limits]
      attr_reader :limits

      # @return [HubspotSDK::Resources::Crm::Lists]
      attr_reader :lists

      # @return [HubspotSDK::Resources::Crm::ObjectLibrary]
      attr_reader :object_library

      # @return [HubspotSDK::Resources::Crm::ObjectSchemas]
      attr_reader :object_schemas

      # @return [HubspotSDK::Resources::Crm::Objects]
      attr_reader :objects

      # @return [HubspotSDK::Resources::Crm::Owners]
      attr_reader :owners

      # @return [HubspotSDK::Resources::Crm::Pipelines]
      attr_reader :pipelines

      # @return [HubspotSDK::Resources::Crm::Properties]
      attr_reader :properties

      # @return [HubspotSDK::Resources::Crm::PropertiesValidations]
      attr_reader :properties_validations

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @app_uninstalls = HubspotSDK::Resources::Crm::AppUninstalls.new(client: client)
        @associations = HubspotSDK::Resources::Crm::Associations.new(client: client)
        @associations_schema = HubspotSDK::Resources::Crm::AssociationsSchema.new(client: client)
        @deal_splits = HubspotSDK::Resources::Crm::DealSplits.new(client: client)
        @exports = HubspotSDK::Resources::Crm::Exports.new(client: client)
        @extensions = HubspotSDK::Resources::Crm::Extensions.new(client: client)
        @imports = HubspotSDK::Resources::Crm::Imports.new(client: client)
        @limits = HubspotSDK::Resources::Crm::Limits.new(client: client)
        @lists = HubspotSDK::Resources::Crm::Lists.new(client: client)
        @object_library = HubspotSDK::Resources::Crm::ObjectLibrary.new(client: client)
        @object_schemas = HubspotSDK::Resources::Crm::ObjectSchemas.new(client: client)
        @objects = HubspotSDK::Resources::Crm::Objects.new(client: client)
        @owners = HubspotSDK::Resources::Crm::Owners.new(client: client)
        @pipelines = HubspotSDK::Resources::Crm::Pipelines.new(client: client)
        @properties = HubspotSDK::Resources::Crm::Properties.new(client: client)
        @properties_validations = HubspotSDK::Resources::Crm::PropertiesValidations.new(client: client)
      end
    end
  end
end
