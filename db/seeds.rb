# frozen_string_literal: true

User.where(email: 'jcarri877@tamu.edu').first_or_create([
                                                          { first_name: 'Jose', last_name: 'Carrillo', pronouns: 'he/him', classification: 'U4', major: 'CPCS',
                                                            phone_number: '9157994069', uid: '115599485721522811654', avatar_url: 'https://lh3.googleusercontent.com/a/ALm5wu2GQ1wP3RbdD4xgyG8mNLcojqzWRJRHUQuwuRjF=s96-c', provider: 'google_oauth2' }
                                                        ])
Announcement.create!([
                       { send_time: '2022-10-07 21:04:00', title: 'Test Announcement', category: 'General',
                         contents: 'This is a test message by the development team!', office_id: nil }
                     ])
AttendanceRecord.create!([
                           { arrival_time: '2022-10-07 21:09:00', user_id: nil, event_id: nil }
                         ])
Due.create!([
              { purpose: 'd', transaction_date: '2022-09-26 22:43:00', amount_due: nil, amount_paid: nil,
                user_id: nil },
              { purpose: 'aaa', transaction_date: '2022-09-25 21:59:00', amount_due: nil, amount_paid: nil,
                user_id: nil }
            ])
Event.create!([
                { name: 'Test Event', description: 'This is a test event by the development team!',
                  meeting_time: '2022-10-07 21:05:00', location: 'Mars', duration: '2000-01-01 00:30:00' }
              ])
Office.create!([
                 { title: 'President', permissions: 'All', user_id: nil }
               ])
