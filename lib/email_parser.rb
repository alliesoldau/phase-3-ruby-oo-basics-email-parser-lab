# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_reader :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        if @emails.match(/(?=.*,\s)(?=.*\s)/)
            no_commas = @emails.gsub! ",", ""
            no_commas.split(' ').uniq
        elsif @emails.match(/,\s/)
            @emails.split(', ').uniq
        elsif @emails.match(/[a-zA-Z]\s[a-zA-Z]/)
            @emails.split(' ').uniq
        end
    end
end

# alt solution

# class EmailAddressParser
#     attr_reader :emails
  
#     def initialize(emails)
#       @emails = emails
#     end
  
#     def parse
#       emails.split(/, | /).uniq
#     end
#   end