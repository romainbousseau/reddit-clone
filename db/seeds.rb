Subject.destroy_all
User.destroy_all

# Users
User.new(email: 'javier@psg.com', password: 'azerty', password_confirmation: 'azerty', username: 'Javier').save
User.new(email: 'hatem@psg.com', password: 'azerty', password_confirmation: 'azerty', username: 'Hatem').save
User.new(email: 'edinson@psg.com', password: 'azerty', password_confirmation: 'azerty', username: 'Edinson').save
User.new(email: 'julian@psg.com', password: 'azerty', password_confirmation: 'azerty', username: 'Julian').save

# Subjects
Subject.new(title: 'Allez Paris SG', content: 'O ville lumière sens la chaleur', user_id: User.find(1).id).save
Subject.new(title: 'Eh Oh Redstar FC', content: 'Le Red Star c\'est seulement à Bauer', user_id: User.find(2).id).save
Subject.new(title: 'OM = Sida', content: 'Dans les égouts des rats...', user_id: User.find(3).id).save
Subject.new(title: 'MFC ohéohé', content: 'Menil en league des champions', user_id: User.find(4).id).save
