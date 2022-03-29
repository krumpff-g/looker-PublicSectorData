# The name of this view in Looker is "Population Vs Lga"
view: population_vs_lga {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `PublicDataSet.Population_vs_LGA`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age Group" in Explore.

  dimension: age_group {
    type: string
    sql: ${TABLE}.Age_group ;;
  }

  dimension: lga_code {
    type: number
    sql: ${TABLE}.LGA_code ;;
  }

   dimension: lga_PK  {
    type: string
    sql: CONCAT(${TABLE}.lga_code, ${TABLE}.age_group) ;;
    primary_key: yes
    hidden: yes
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.




  dimension: lga_name {
    type: string
    sql: ${TABLE}.LGA_name ;;
  }

  dimension: lga_name2 {
    type: string
    sql: ${TABLE}.LGA_name ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.Population ;;
  }

  dimension: st_code {
    type: number
    sql: ${TABLE}.ST_code ;;
  }

  dimension: st_name {
    type: string
    sql: ${TABLE}.ST_name ;;
  }

  measure: count {
    type: count
    drill_fields: [st_name, lga_name, age_group]
  }
}
