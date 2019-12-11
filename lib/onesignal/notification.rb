# frozen_string_literal: true

require 'onesignal/notification/contents'
require 'onesignal/notification/headings'

module OneSignal
  class Notification
    attr_reader :contents, :headings, :template_id, :included_segments, :excluded_segments,
                :included_targets, :send_after, :attachments, :appearance_sounds, :appearance_images,
                :appearance_additionals, :buttons

    def initialize **params
      unless params.include?(:contents) || params.include?(:template_id)
        raise ArgumentError, 'missing contents or template_id'
      end

      @contents               = params[:contents]
      @headings               = params[:headings]
      @template_id            = params[:template_id]
      @included_segments      = params[:included_segments]
      @excluded_segments      = params[:excluded_segments]
      @included_targets       = params[:included_targets]
      @send_after             = params[:send_after].to_s
      @attachments            = params[:attachments]
      @filters                = params[:filters]
      @appearance_sounds      = params[:appearance_sounds]
      @appearance_images      = params[:appearance_images]
      @appearance_additionals = params[:appearance_additionals]
      @buttons                = params[:buttons]
    end

    def as_json options = {}
      super(options)
        .except('attachments', 'appearance_sounds', 'included_targets', 'appearance_images', 'appearance_additionals', 'buttons')
        .merge(@attachments&.as_json(options) || {})
        .merge(@appearance_sounds&.as_json(options) || {})
        .merge(@included_targets&.as_json(options) || {})
        .merge(@appearance_images&.as_json(options) || {})
        .merge(@appearance_additionals&.as_json(options) || {})
        .merge(@buttons&.as_json(options) || {})
        .select { |_k, v| v.present? }
    end
  end
end
