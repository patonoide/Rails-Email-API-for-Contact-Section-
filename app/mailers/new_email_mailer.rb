class NewEmailMailer < ApplicationMailer
    default from: 'from'

      def email(message_id)
          @messages = Message.where(id: message_id)
        mail(to: 'to', subject: 'Novo Email')
      end



end
