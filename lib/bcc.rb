require "bcc/version"
require "bcc/railtie" if defined?(Rails::Railtie)

module Bcc
  class Base
    def self.delivering_message(message)
      return unless BCC_EMAILS.any?
      message.bcc += BCC_EMAILS
    end
  end
end