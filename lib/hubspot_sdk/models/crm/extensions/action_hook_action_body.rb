# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class ActionHookActionBody < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute http_method
          #   The HTTP method to be used when making the call, which can be set to GET, POST,
          #   PUT, DELETE, or PATCH. If using GET or DELETE
          #
          #   @return [Symbol, HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody::HTTPMethod]
          required :http_method,
                   enum: -> { HubSpotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod },
                   api_name: :httpMethod

          # @!attribute property_names_included
          #   A list of property names that will be included on the action. See the
          #   documentation for more information
          #
          #   @return [Array<String>]
          required :property_names_included,
                   HubSpotSDK::Internal::Type::ArrayOf[String],
                   api_name: :propertyNamesIncluded

          # @!attribute type
          #   The type of status.
          #
          #   @return [Symbol, HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody::Type]
          required :type, enum: -> { HubSpotSDK::Crm::Extensions::ActionHookActionBody::Type }

          # @!attribute url
          #   The URL endpoint that will be called when the action is triggered.
          #
          #   @return [String]
          required :url, String

          # @!attribute confirmation
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::ActionConfirmationBody, nil]
          optional :confirmation, -> { HubSpotSDK::Crm::Extensions::ActionConfirmationBody }

          # @!attribute label
          #   The label for this property as you'd like it displayed to users.
          #
          #   @return [String, nil]
          optional :label, String

          # @!method initialize(http_method:, property_names_included:, type:, url:, confirmation: nil, label: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody} for more details.
          #
          #   @param http_method [Symbol, HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody::HTTPMethod] The HTTP method to be used when making the call, which can be set to GET, POST,
          #
          #   @param property_names_included [Array<String>] A list of property names that will be included on the action. See the documentat
          #
          #   @param type [Symbol, HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody::Type] The type of status.
          #
          #   @param url [String] The URL endpoint that will be called when the action is triggered.
          #
          #   @param confirmation [HubSpotSDK::Models::Crm::Extensions::ActionConfirmationBody]
          #
          #   @param label [String] The label for this property as you'd like it displayed to users.

          # The HTTP method to be used when making the call, which can be set to GET, POST,
          # PUT, DELETE, or PATCH. If using GET or DELETE
          #
          # @see HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody#http_method
          module HTTPMethod
            extend HubSpotSDK::Internal::Type::Enum

            CONNECT = :CONNECT
            DELETE = :DELETE
            GET = :GET
            HEAD = :HEAD
            OPTIONS = :OPTIONS
            PATCH = :PATCH
            POST = :POST
            PUT = :PUT
            TRACE = :TRACE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The type of status.
          #
          # @see HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody#type
          module Type
            extend HubSpotSDK::Internal::Type::Enum

            ACTION_HOOK = :ACTION_HOOK

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
