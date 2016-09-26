module ByAttribute
  def method_missing(method_name, *args, &block)
    if args.empty?
      values = where(attr: method_name)
      return false if values.empty?
      return values.map(&:value).first if values.length == 1
      values.map(&:value)
    else
      super
    end
  end
end
``