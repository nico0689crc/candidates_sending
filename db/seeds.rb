# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

DatabaseCleaner.clean_with :truncation

PointOfContact.create([{
    first_name: "Logan",
    last_name: "Griffith",
    profile_picture_url: "https://img.buzzfeed.com/buzzfeed-static/static/2022-05/11/14/asset/82ea240a9e12/sub-buzz-2936-1652280422-21.jpg",
    role: "Recruiter",
    company_name: "ITCROWDARG",
    contact_email: "evpes@af.gy",
    contact_linked_in: "http://bospekwuf.br/linmames",
    contact_whatsapp: "+5491164182821"
},{
    first_name: "Barry",
    last_name: "Alexander",
    profile_picture_url: "https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg",
    role: "Recruiter",
    company_name: "ITCROWDARG",
    contact_email: "owa@hokudoh.ao",
    contact_linked_in: "http://tolavki.at/uh",
    contact_whatsapp: "+5491164182821"
},{
    first_name: "John",
    last_name: "Sanchez",
    profile_picture_url: "https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg",
    role: "Recruiter",
    company_name: "ITCROWDARG",
    contact_email: "john@hokudoh.ao",
    contact_linked_in: "http://tolavki.at/uh",
    contact_whatsapp: "+5491164182821"
}])

Job.create([{
    title: "Velit eu nostrud reprehenderit",
    description: "Duis occaecat enim minim quis. Voluptate nisi non quis do ea irure dolore exercitation sit culpa. Enim amet elit tempor incididunt adipisicing eu sint quis voluptate. Ut occaecat veniam excepteur labore nisi commodo minim laborum. Est cillum fugiat sunt id quis dolor labore duis reprehenderit.",
    ats_link: "http://su.ni/wodvijuse",
    point_of_contact_id: 2
},{
    title: "Occaecat incididunt amet",
    description: "Veniam consectetur reprehenderit anim aliquip nisi. Eiusmod dolor fugiat quis proident. Non dolore labore id ullamco fugiat labore id duis ipsum tempor. Pariatur sunt fugiat labore nulla dolor minim adipisicing occaecat cillum.",
    ats_link: "http://cuisuse.io/tapse",
    point_of_contact_id: 3
},{
    title: "Ad duis in id deserunt reprehenderit",
    description: "Adipisicing fugiat ea laboris proident adipisicing cupidatat mollit velit. Ipsum ea duis Lorem quis eiusmod fugiat reprehenderit anim sint Lorem sint. Deserunt irure elit laboris deserunt. Ut eu quis voluptate velit reprehenderit irure consectetur reprehenderit fugiat laboris dolor et.",
    ats_link: "http://gekarucu.kh/cuhu",
    point_of_contact_id: 3
}])