# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ActionHookActionBody < HubspotSDK::Internal::Type::BaseModel
          # @!attribute http_method
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::Extensions::ActionHookActionBody::HTTPMethod]
          required :http_method,
                   enum: -> { HubspotSDK::CRM::Extensions::ActionHookActionBody::HTTPMethod },
                   api_name: :httpMethod

          # @!attribute property_names_included
          #
          #   @return [Array<String>]
          required :property_names_included,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :propertyNamesIncluded

          # @!attribute type
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::Extensions::ActionHookActionBody::Type]
          required :type, enum: -> { HubspotSDK::CRM::Extensions::ActionHookActionBody::Type }

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!attribute confirmation
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::ActionConfirmationBody, nil]
          optional :confirmation, -> { HubspotSDK::CRM::Extensions::ActionConfirmationBody }

          # @!attribute label
          #
          #   @return [String, nil]
          optional :label, String

          # @!method initialize(http_method:, property_names_included:, type:, url:, confirmation: nil, label: nil)
          #   @param http_method [Symbol, HubspotSDK::Models::CRM::Extensions::ActionHookActionBody::HTTPMethod]
          #   @param property_names_included [Array<String>]
          #   @param type [Symbol, HubspotSDK::Models::CRM::Extensions::ActionHookActionBody::Type]
          #   @param url [String]
          #   @param confirmation [HubspotSDK::Models::CRM::Extensions::ActionConfirmationBody]
          #   @param label [String]

          # @see HubspotSDK::Models::CRM::Extensions::ActionHookActionBody#http_method
          module HTTPMethod
            extend HubspotSDK::Internal::Type::Enum

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

          # @see HubspotSDK::Models::CRM::Extensions::ActionHookActionBody#type
          module Type
            extend HubspotSDK::Internal::Type::Enum

            ACTION_HOOK = :ACTION_HOOK

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
