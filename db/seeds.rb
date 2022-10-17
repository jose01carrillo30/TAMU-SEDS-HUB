# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
testdate1 = 1.week.ago
testdate2 = 2.week.ago
testdate3 = 3.week.ago
testdate4 = 4.week.ago
testdate5 = 5.week.ago


announcements = Announcement.create([
    {
        send_time: testdate1,
        title: "test_title",
        category: "test_cat",
        contents: "test_contents",
        created_at: testdate2,
        updated_at: testdate3,
    }
])

attendance_records = AttendanceRecord.create([
    {
        arrival_time: testdate1,
        created_at: testdate2,
        updated_at: testdate3,        
    }
])

dues = Due.create([
    {
        purpose: "test_purpose",
        transaction_date: testdate1,
        created_at: testdate2,
        updated_at: testdate3,
        amount_due: 2.0,
        amount_paid: 1.0,        
    }
])

events = Event.create([
    {
        name: "test_name",
        description: "test_description",
        meeting_time: testdate1,
        location: "test_location",
        duration: testdate4,
        created_at: testdate2,
        updated_at: testdate3,
    }
])

members = Member.create([
    {
        email: "email",
        first_name: "test_description",
        last_name: testdate1,
        pronouns: "test_location",
        classification: "classification",
        major: "major",
        phone_number: "phone_number",
        created_at: testdate2,
        updated_at: testdate3,
    }
])

offices = Office.create([
    {
        title: "titletest",
        permissions: "perms",
        created_at: testdate2,
        updated_at: testdate3,        
    }
])