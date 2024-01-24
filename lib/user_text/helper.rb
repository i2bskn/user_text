module UserText
  module Helper
    def user_text(text)
      email2a(url2a(nl2br(user_text_sanitize(text.to_s)))).to_s.html_safe
    end

    def nl2br(text)
      text.gsub(/\R/) { %(<br>) }
    end

    def url2a(text)
      text.gsub(URI::DEFAULT_PARSER.make_regexp(%w[http https])) do
        %(<a href="#{Regexp.last_match(0)}" target="_blank">#{Regexp.last_match(0)}</a>)
      end
    end

    def email2a(text)
      text.gsub(/[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/i) { %(<a href="mailto:#{Regexp.last_match(0)}">#{Regexp.last_match(0)}</a>) }
    end

    def user_text_sanitize(text)
      user_text_sanitizer.sanitize(text)
    end

    def user_text_sanitizer
      @user_text_sanitizer ||= Rails::HTML5::FullSanitizer.new
    end
  end
end
