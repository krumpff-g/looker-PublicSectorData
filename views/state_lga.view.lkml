# The name of this view in Looker is "State Lga"
view: state_lga {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `PublicDataSet.State_LGA`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Lga Caps" in Explore.

  dimension: lga_caps {
    type: string
    sql: ${TABLE}.LGA_CAPS ;;
  }

  dimension: lga_code {
    type: number
    sql: ${TABLE}.LGA_code ;;
    primary_key: yes
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_lga_code {
    type: sum
    sql: ${lga_code} ;;
  }

  measure: average_lga_code {
    type: average
    sql: ${lga_code} ;;
  }

  dimension: lga_name {
    type: string
    sql: ${TABLE}.LGA_name ;;
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
    drill_fields: [st_name, lga_name]
  }
}
