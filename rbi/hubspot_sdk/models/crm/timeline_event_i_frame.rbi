# typed: strong

module HubspotSDK
  module Models
    module CRM
      class TimelineEventIFrame < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::TimelineEventIFrame,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The label of the modal window that displays the iframe contents.
        sig { returns(String) }
        attr_accessor :header_label

        # The height of the modal window in pixels.
        sig { returns(Integer) }
        attr_accessor :height

        # The text displaying the link that will display the iframe.
        sig { returns(String) }
        attr_accessor :link_label

        # The URI of the iframe contents.
        sig { returns(String) }
        attr_accessor :url

        # The width of the modal window in pixels.
        sig { returns(Integer) }
        attr_accessor :width

        sig do
          params(
            header_label: String,
            height: Integer,
            link_label: String,
            url: String,
            width: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The label of the modal window that displays the iframe contents.
          header_label:,
          # The height of the modal window in pixels.
          height:,
          # The text displaying the link that will display the iframe.
          link_label:,
          # The URI of the iframe contents.
          url:,
          # The width of the modal window in pixels.
          width:
        )
        end

        sig do
          override.returns(
            {
              header_label: String,
              height: Integer,
              link_label: String,
              url: String,
              width: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
