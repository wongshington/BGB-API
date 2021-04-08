# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
twenty47 = "24 hours/day, 7days/week"
Topic.destroy_all

blm = Topic.create(topic: "BLM")
lgbtq = Topic.create(topic: "LGBTQ+")
legal = Topic.create(topic: "Legal")
physical_health = Topic.create(topic: "Physical Health")
mental_health = Topic.create(topic: "Mental Health")
immediate_danger = Topic.create(topic: "Immediate Danger")
domestic_issues = Topic.create(topic: "Domestic Issues")
general = Topic.create(topic: "General")
homelessness = Topic.create(topic: "Homelessness")
foster_care = Topic.create(topic: "Foster Care")
medical = Topic.create(topic: "Medical")
school = Topic.create(topic: "School")
immigration = Topic.create(topic: "Immigration")
sexual_health = Topic.create(topic: "Sexual Health")
safety = Topic.create(topic: "Safety")

Resource.destroy_all

national_suicide_prevention_lifeline = Resource.new(
    resource: "National Suicide Prevention Lifeline",
    region: "USA",
    address: nil,
    website: nil,
    phone: 18002738255,
    hours: twenty47,
    description: nil,
    notes: nil,
    distance: nil
)
national_suicide_prevention_lifeline.save!
national_suicide_prevention_lifeline.topics = [mental_health]

the_trevor_project = Resource.new(
    resource: "The Trevor Project",
    region: "USA",
    address: nil,
    website: nil,
    phone: 8664887386,
    hours: twenty47,
    description: "Offers support to LGBTQ+ young adult community",
    notes: nil,
    distance: nil
)
the_trevor_project.save!
the_trevor_project.topics = [lgbtq]

crisis_text_line = Resource.new(
    resource: "Crisis Text Line",
    region: "USA",
    address: nil,
    website: nil,
    phone: nil,
    hours: twenty47,
    description: "Offers support in time of crisis, creates a plan to stay healthy and safe",
    notes: "Text SUPPORT to 741-741",
    distance: nil
)
crisis_text_line.save!
crisis_text_line.topics = [general]

youth_justic_project = Resource.new(
    resource: "Youth Justic Project",
    region: "Bay Area",
    address: nil,
    website: nil,
    phone: 15102505277,
    hours: twenty47,
    description: "Offers a wide range of legal help/ advice for young adults\n Age 14-25",
    notes: nil,
    distance: nil
)
youth_justic_project.save!
youth_justic_project.topics = [legal, homelessness, foster_care, medical, school, immigration]

ca_youth_crisis_line = Resource.new(
    resource: "CA Youth Crisis Line",
    region: "California",
    address: nil,
    website: "https://calyouth.org/cycl/",
    phone: 18008435200,
    hours: twenty47,
    description: "Provides counseling and resources to youth during time of crisis",
    notes: "Crisis: Anytime you are feeling misunderstood or overwhelmed and needing to talk to someone about what’s happening, especially before you run away or cause harm to yourselves or others.",
    distance: nil
)
ca_youth_crisis_line.save!
ca_youth_crisis_line.topics = [general]

bay_area_health_consumer_center = Resource.new(
    resource: "Bay Area Health Consumer Center",
    region: "Bay Area",
    address: nil,
    website: "https://baylegal.org/what-we-do/health-care/health-care-access/",
    phone: 18556937285,
    hours: nil,
    description: "Legal help with a healthcare issue or unfair medical billing problem",
    notes: nil,
    distance: nil
)
bay_area_health_consumer_center.save!
bay_area_health_consumer_center.topics = [medical, legal]

east_oakland_youth_development_center = Resource.new(
    resource: "East Oakland Youth Development Center",
    region: "Bay Area",
    address: "8200 International Blvd. \n Oakland, CA 94621",
    website: "http://eoydc.org/",
    phone: 15105698088,
    hours: nil,
    description: "Wellness and Community",
    notes: nil,
    distance: nil
)
east_oakland_youth_development_center.save!
east_oakland_youth_development_center.topics = [general]

black_organizing_project = Resource.new(
    resource: "Black Organizing Project",
    region: "Bay Area",
    address: "1035 W. Grand Ave \n Oakland, CA 94607",
    website: "http://blackorganizingproject.org/",
    phone: 15108911219,
    hours: nil,
    description: "More for volunteer work and community",
    notes: nil,
    distance: nil
)
black_organizing_project.save!
black_organizing_project.topics = [general]

oakland_lgbtq_community_center = Resource.new(
    resource: "Oakland LGBTQ Community Center",
    region: "Bay Area",
    address: "3207 Lakeshore Ave \n Oakland, CA 94610",
    website: "https://www.oaklandlgbtqcenter.org/",
    phone: 15108822286,
    hours: "Mon-Fri 12:00-6:00pm",
    description: "Health testing, food pantry, family support, therapy/ support groups",
    notes: nil,
    distance: nil
)
oakland_lgbtq_community_center.save!
oakland_lgbtq_community_center.topics = [lgbtq]

youth_uprising = Resource.new(
    resource: "Youth Uprising",
    region: "Bay Area",
    address: "8711 Macarthur Blvd. \n Oakland, CA 94605",
    website: "www.youthuprising.org",
    phone: 15107779909,
    hours: nil,
    description: "Academic support, chaperoning to/from schools, + community, job training",
    notes: nil,
    distance: nil
)
youth_uprising.save!
youth_uprising.topics = [lgbtq]

east_oakland_collective = Resource.new(
    resource: "East Oakland Collective",
    region: "Bay Area",
    address: "7800 Macarthur Blvd. \n Oakland, CA 94605",
    website: "https://www.eastoaklandcollective.com/",
    phone: 15109900775,
    hours: nil,
    description: "Community/volunteer, Mobility 4 All program for free transportation",
    notes: nil,
    distance: nil
)
east_oakland_collective.save!
east_oakland_collective.topics = [lgbtq]

misssey = Resource.new(
    resource: "Misssey",
    region: "Bay Area",
    address: "424 Jefferson St. \n Oakland, CA 94607",
    website: "https://misssey.org/",
    phone: 15102512070,
    hours: nil,
    description: "Resources for sexually exploited youth",
    notes: nil,
    distance: nil
)
misssey.save!
misssey.topics = [sexual_health]

national_human_trafficking_hotline = Resource.new(
    resource: "National Human Trafficking Hotline",
    region: "USA",
    address: nil,
    website: nil,
    phone: 18883737888,
    hours: nil,
    description: nil,
    notes: nil,
    distance: nil
)
national_human_trafficking_hotline.save!
national_human_trafficking_hotline.topics = [safety]

