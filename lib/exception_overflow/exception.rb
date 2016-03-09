class Exception
  old_to_s = instance_method(:to_s)

  define_method(:to_s) do
    old_message = old_to_s.bind(self).call

    ExceptionOverflow::Message.new(old_message).render
  end
end
