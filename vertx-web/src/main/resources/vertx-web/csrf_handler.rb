require 'vertx-web/routing_context'
require 'vertx/util/utils.rb'
# Generated from io.vertx.ext.web.handler.CSRFHandler
module VertxWeb
  #  This handler adds a CSRF token to requests which mutate state. In order change the state a (XSRF-TOKEN) cookie is set
  #  with a unique token, that is expected to be sent back in a (X-XSRF-TOKEN) header.
  # 
  #  The behavior is to check the request body header and cookie for validity.
  # 
  #  This Handler requires session support, thus should be added somewhere below Session and Body handlers.
  class CSRFHandler
    # @private
    # @param j_del [::VertxWeb::CSRFHandler] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::VertxWeb::CSRFHandler] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == CSRFHandler
    end
    def @@j_api_type.wrap(obj)
      CSRFHandler.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxExtWebHandler::CSRFHandler.java_class
    end
    # @param [::VertxWeb::RoutingContext] arg0 
    # @return [void]
    def handle(arg0=nil)
      if arg0.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:handle, [Java::IoVertxExtWeb::RoutingContext.java_class]).call(arg0.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling handle(#{arg0})"
    end
    #  Instantiate a new CSRFHandlerImpl with a secret
    #  <p>
    #  <pre>
    #  CSRFHandler.create("s3cr37")
    #  </pre>
    # @param [String] secret server secret to sign the token.
    # @return [::VertxWeb::CSRFHandler]
    def self.create(secret=nil)
      if secret.class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxExtWebHandler::CSRFHandler.java_method(:create, [Java::java.lang.String.java_class]).call(secret),::VertxWeb::CSRFHandler)
      end
      raise ArgumentError, "Invalid arguments when calling create(#{secret})"
    end
    #  Set the cookie name. By default XSRF-TOKEN is used as it is the expected name by AngularJS however other frameworks
    #  might use other names.
    # @param [String] name a new name for the cookie.
    # @return [self]
    def set_cookie_name(name=nil)
      if name.class == String && !block_given?
        @j_del.java_method(:setCookieName, [Java::java.lang.String.java_class]).call(name)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_cookie_name(#{name})"
    end
    #  Set the header name. By default X-XSRF-TOKEN is used as it is the expected name by AngularJS however other
    #  frameworks might use other names.
    # @param [String] name a new name for the header.
    # @return [self]
    def set_header_name(name=nil)
      if name.class == String && !block_given?
        @j_del.java_method(:setHeaderName, [Java::java.lang.String.java_class]).call(name)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_header_name(#{name})"
    end
    #  Should the handler give warning messages if this handler is used in other than https protocols?
    # @param [true,false] nag true to nag
    # @return [self]
    def set_nag_https(nag=nil)
      if (nag.class == TrueClass || nag.class == FalseClass) && !block_given?
        @j_del.java_method(:setNagHttps, [Java::boolean.java_class]).call(nag)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_nag_https(#{nag})"
    end
    #  Set the timeout for tokens generated by the handler, by default it uses the default from the session handler.
    # @param [Fixnum] timeout token timeout
    # @return [self]
    def set_timeout(timeout=nil)
      if timeout.class == Fixnum && !block_given?
        @j_del.java_method(:setTimeout, [Java::long.java_class]).call(timeout)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_timeout(#{timeout})"
    end
  end
end
