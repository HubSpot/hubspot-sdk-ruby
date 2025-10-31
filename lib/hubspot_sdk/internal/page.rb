# frozen_string_literal: true

module HubspotSDK
  module Internal
    # @generic Elem
    #
    # @example
    #   if page.has_next?
    #     page = page.next_page
    #   end
    #
    # @example
    #   page.auto_paging_each do |definition|
    #     puts(definition)
    #   end
    class Page
      include HubspotSDK::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :results

      # @return [Paging]
      attr_accessor :paging

      # @return [Boolean]
      def next_page?
        !results.to_a.empty? && !paging&.next_&.after.to_s.empty?
      end

      # @raise [HubspotSDK::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = HubspotSDK::Internal::Util.deep_merge(@req, {query: {after: paging&.next_&.after}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.results&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [HubspotSDK::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {results: Array => results}
          @results = results.map { HubspotSDK::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {paging: Hash | nil => paging}
          @paging = HubspotSDK::Internal::Type::Converter.coerce(HubspotSDK::Internal::Page::Paging, paging)
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = HubspotSDK::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end

      class Paging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute next_
        #
        #   @return [Paging::Next, nil]
        optional :next_, -> { Paging::Next }, api_name: :next

        # @!method initialize(next_: nil)
        #   @param next_ [Paging::Next]

        # @see Paging#next_
        class Next < HubspotSDK::Internal::Type::BaseModel
          # @!attribute after
          #
          #   @return [String, nil]
          optional :after, String

          # @!method initialize(after: nil)
          #   @param after [String]
        end
      end
    end
  end
end
