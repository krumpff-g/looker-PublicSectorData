# Define the database connection to be used for this model.
connection: "kg-australianpublicsector"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: kr_publicsector_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kr_publicsector_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Kr-publicsector"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: road_trauma {
  label: "Victorian Road Trauma"
  view_name: vic_crash

  join: state_lga {
    type:  left_outer
    view_label: "LGA & State"
    relationship: many_to_one
    sql_on: ${vic_crash.lga_name} = ${state_lga.lga_caps} ;;
  }

  join: population_vs_lga {
    type: left_outer
    view_label: "Population"
    relationship: many_to_one
    sql_on: ${state_lga.lga_code}=${population_vs_lga.lga_code} ;;
  }
}

explore: population_vs_lga {}

explore: state_lga {}
