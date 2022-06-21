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

PipelineStep.create([{
    name: "Pipeline Step 1",
    description: "Quis labore culpa proident nulla nostrud officia amet dolore. Exercitation velit culpa voluptate ipsum laborum occaecat ut excepteur occaecat ipsum labore adipisicing est. Occaecat tempor cillum pariatur ea ea excepteur officia excepteur.",
    teaser: "Excepteur irure quis aliquip esse irure reprehenderit qui pariatur tempor pariatur amet velit.",
    action_button_label: "dark",
    action_button_url: "http://tom.im/leroc",
    order: 1,
    job_id: 1
},{
    name: "Pipeline Step 2",
    description: "Id eu esse labore eu quis. Aliqua ut minim sunt elit sit proident consectetur. Quis reprehenderit et amet irure culpa ipsum est deserunt aute cupidatat. Reprehenderit reprehenderit minim minim voluptate anim anim labore ut amet minim ut eiusmod. Ex ut officia id magna labore eu duis. Adipisicing sit do aliquip commodo et do anim velit ex amet sunt dolor. Cupidatat eiusmod id qui velit incididunt.",
    teaser: "Laborum ex ex incididunt tempor cillum officia officia est qui cillum sit cupidatat cillum.",
    action_button_label: "memory",
    action_button_url: "http://ded.sj/bev",
    order: 2,
    job_id: 1
},{
    name: "Pipeline Step 3",
    description: "Ipsum officia anim tempor eiusmod nulla laboris aute excepteur mollit pariatur. Amet incididunt exercitation occaecat cupidatat occaecat. Mollit consequat ut duis culpa dolor incididunt irure proident in culpa ad. Ut culpa cupidatat Lorem et pariatur ipsum nulla adipisicing id qui.",
    teaser: "Et dolor enim ipsum qui dolore Lorem nisi culpa non ad et.",
    action_button_label: "warn",
    action_button_url: "http://bo.su/awapowar",
    order: 3,
    job_id: 1
},{
    name: "Pipeline Step 1",
    description: "Enim do non aliqua ex laborum tempor aliquip ipsum nulla cillum exercitation labore tempor. Veniam proident esse occaecat fugiat sunt laboris veniam. Pariatur excepteur velit reprehenderit cillum id duis deserunt nisi fugiat amet. Consectetur laboris minim laborum velit ea irure aliqua duis et mollit.",
    teaser: "Velit reprehenderit adipisicing consectetur cupidatat mollit excepteur aliqua voluptate aute.",
    action_button_label: "arrangement",
    action_button_url: "http://zak.no/pukzekev",
    order: 1,
    job_id: 2
},{
    name: "Pipeline Step 2",
    description: "Nulla minim adipisicing esse eu pariatur. Esse ipsum mollit velit occaecat amet officia. Laborum mollit voluptate adipisicing sunt.",
    teaser: "Dolore duis ipsum anim ex adipisicing dolor enim dolore.",
    action_button_label: "may",
    action_button_url: "http://bemofe.bs/vugzegad",
    order: 2,
    job_id: 2
},{
    name: "Pipeline Step 1",
    description: "Reprehenderit in nostrud elit aliqua nisi quis nulla mollit quis consectetur. Anim cupidatat occaecat ad aute pariatur. Aute cillum reprehenderit id mollit exercitation dolore ullamco.",
    teaser: "Laboris veniam voluptate aliquip veniam nisi consequat dolore eu.",
    action_button_label: "roof",
    action_button_url: "http://nem.kh/kiz",
    order: 1,
    job_id: 3
},{
    name: "Pipeline Step 2",
    description: "Excepteur ex est incididunt minim dolore commodo. Elit ex eu ea amet culpa. Nulla ad officia irure sint veniam ex.",
    teaser: "Elit mollit ipsum laboris dolor.",
    action_button_label: "stood",
    action_button_url: "http://tev.jm/jednegab",
    order: 2,
    job_id: 3
},{
    name: "Pipeline Step 3",
    description: "Nulla aute in aute est eiusmod consectetur sit. Velit mollit voluptate nulla anim dolor occaecat magna nisi officia incididunt deserunt nisi. Nostrud deserunt et aute incididunt qui ullamco nisi tempor deserunt et quis esse consectetur. Occaecat eiusmod Lorem minim sunt occaecat non proident voluptate quis labore incididunt ipsum esse.",
    teaser: "Dolore amet esse non occaecat laboris eiusmod cillum pariatur cupidatat aliqua.",
    action_button_label: "shinning",
    action_button_url: "http://tikopog.ki/mufva",
    order: 3,
    job_id: 3
},{
    name: "Pipeline Step 4",
    description: "Veniam aute quis excepteur irure pariatur irure consequat adipisicing sint quis ut. Do sunt dolore ex occaecat do cupidatat occaecat aute ex. Minim mollit voluptate aliquip nisi consectetur eu.",
    teaser: "Nisi aliquip culpa ea Lorem Lorem.",
    action_button_label: "however",
    action_button_url: "http://hul.ph/cazlo",
    order: 4,
    job_id: 3
}])

Candidate.create([{
    first_name: "Carlos",
    last_name: "Burgess",
    contact_email: "nulo@kehhi.am",
    contact_linked_in: "http://ek.gt/zuwaj"
},{
    first_name: "Warren",
    last_name: "Dunn",
    contact_email: "ges@za.mp",
    contact_linked_in: "http://lahpojow.sk/kukgajbeb"
},{
    first_name: "Calvin",
    last_name: "Lindsey",
    contact_email: "zevunij@mamordod.sd",
    contact_linked_in: "http://dabmah.sk/pi"
},{
    first_name: "Lily",
    last_name: "Coleman",
    contact_email: "lifkuf@putupbec.am",
    contact_linked_in: "http://togfokej.gov/op"
},])