# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.all.length == 0
    users = User.create([{
        email: "test@test.com",
        password: "1234",
        password_confirmation: "1234",
        role: "admin"
    }, 
    {
        email: "admin@test.com",
        password: "password",
        password_confirmation: "password",
        role: "admin"
    }, 
    {
        email: "user@test.com",
        password: "password1",
        password_confirmation: "password1",
        role: ""   
        }
    ])
end

if Castle.all.length == 0
    castles = Castle.create([
        {
            name: "Unicorn Magic", 
            description: "Unicorn themed jumping castle perfect for 2-4 year olds. Maximum of 5 occupants in use at once.", 
            price: 85.00
        },
        {
            name: "Rainbow Castle", 
            description: "Beautiful bright colours that match any theme. Ideal for 1-3 year olds.", 
            price: 65.00
        }
        ])
end

if Customer.all.length == 0
    customers = Customer.create([
        {
            name: "Adriana",
            email: "adriana@live.com.au",
            phone_number: 61412345678,
            street_number: "12",
            street_name: "Privet Drive",
            suburb: "Brisbane",
            postcode: 4000,
            notes: "This site is a public park named 'Howl's Moving Park'."
        },
        {
            name: "Mila",
            email: "Mila@test.com",
            phone_number: 61412345678,
            street_number: "12",
            street_name: "Privet Drive",
            suburb: "Brisbane",
            postcode: 4000
        }
    ])
end

if Enquiry.all.length == 0
    enquiries = Enquiry.create([
        {
            castle_id: Castle.first.id,
            customer_id: Customer.first.id,
            start_time: "2021-12-22 08:00:00",
            duration: 4,
            end_time: "2021-12-22 12:00:00",
            paid: false,
            terms_agreement: true,
            total: 85
        },
        {
            castle_id: Castle.last.id,
            customer_id: Customer.last.id,
            start_time: "2021-12-24 12:00:00",
            duration: 4,
            end_time: "2021-12-24 16:00:00",
            paid: true,
            terms_agreement: true,
            total: 105
        }
    ])
end
