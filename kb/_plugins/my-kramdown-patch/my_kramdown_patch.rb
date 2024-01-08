# my_custom_patch.rb

# Open the kramdown/converter module
module Kramdown::Converter
    class Base
        def generate_id(str)
          str = ::Kramdown::Utils::Unidecoder.decode(str) if @options[:transliterated_header_ids]
          str = @options[:auto_id_prefix] + str
          str = "s-" + str if not str =~ /^[a-zA-Z]/
          gen_id = basic_generate_id(str)
          gen_id = 'section' if gen_id.empty?
          @used_ids ||= {}
          if @used_ids.key?(gen_id)
            gen_id += "-#{@used_ids[gen_id] += 1}"
          else
            @used_ids[gen_id] = 0
          end
          gen_id
        end

        # The basic version of the ID generator, without any special provisions for empty or unique
        # IDs.
        def basic_generate_id(str)
          str.tr!('^a-zA-Z0-9 -.:_', '')
          str.tr!(' ', '-')
          str.downcase!
          str
        end
      end

  end
