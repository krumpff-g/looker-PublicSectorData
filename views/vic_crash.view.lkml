# The name of this view in Looker is "Vic Crash"
view: vic_crash {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `PublicDataSet.vic_crash`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Abs Code" in Explore.

  dimension: abs_code {
    type: string
    sql: ${TABLE}.ABS_CODE ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: accident {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ACCIDENT_DATE ;;
  }

  dimension: accident_no {
    type: string
    sql: ${TABLE}.ACCIDENT_NO ;;
  }

  dimension: accident_status {
    type: string
    sql: ${TABLE}.ACCIDENT_STATUS ;;
  }

  dimension_group: accident_time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ACCIDENT_TIME ;;
  }

  dimension: accident_type {
    type: string
    sql: ${TABLE}.ACCIDENT_TYPE ;;
  }

  dimension: alcohol_related {
    type: yesno
    sql: ${TABLE}.ALCOHOL_RELATED ;;
  }

  dimension: alcoholtime {
    type: yesno
    sql: ${TABLE}.ALCOHOLTIME ;;
  }

  dimension: bicyclist {
    type: number
    sql: ${TABLE}.BICYCLIST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bicyclist {
    type: sum
    sql: ${bicyclist} ;;
  }

  measure: average_bicyclist {
    type: average
    sql: ${bicyclist} ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: dca_code {
    type: string
    sql: ${TABLE}.DCA_CODE ;;
  }

  dimension: deg_urban_all {
    type: string
    sql: ${TABLE}.DEG_URBAN_ALL ;;
  }

  dimension: deg_urban_name {
    type: string
    sql: ${TABLE}.DEG_URBAN_NAME ;;
  }

  dimension: divided {
    type: string
    sql: ${TABLE}.DIVIDED ;;
  }

  dimension: divided_all {
    type: string
    sql: ${TABLE}.DIVIDED_ALL ;;
  }

  dimension: driver {
    type: number
    sql: ${TABLE}.DRIVER ;;
  }

  dimension: fatality {
    type: number
    sql: ${TABLE}.FATALITY ;;
  }

  dimension: females {
    type: number
    sql: ${TABLE}.FEMALES ;;
  }

  dimension: heavyvehicle {
    type: number
    sql: ${TABLE}.HEAVYVEHICLE ;;
  }

  dimension: hit_run_flag {
    type: yesno
    sql: ${TABLE}.HIT_RUN_FLAG ;;
  }

  dimension: inj_or_fatal {
    type: number
    sql: ${TABLE}.INJ_OR_FATAL ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.LATITUDE ;;
  }

  dimension: lga_name {
    type: string
    sql: ${TABLE}.LGA_NAME ;;
  }

  dimension: lga_name_all {
    type: string
    sql: ${TABLE}.LGA_NAME_ALL ;;
  }

  dimension: light_condition {
    type: string
    sql: ${TABLE}.LIGHT_CONDITION ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.LONGITUDE ;;
  }

  dimension: males {
    type: number
    sql: ${TABLE}.MALES ;;
  }

  dimension: motorcycle {
    type: number
    sql: ${TABLE}.MOTORCYCLE ;;
  }

  dimension: motorist {
    type: number
    sql: ${TABLE}.MOTORIST ;;
  }

  dimension: no_of_vehicles {
    type: number
    sql: ${TABLE}.NO_OF_VEHICLES ;;
  }

  dimension: node_id {
    type: number
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: node_type {
    type: string
    sql: ${TABLE}.NODE_TYPE ;;
  }

  dimension: noninjured {
    type: number
    sql: ${TABLE}.NONINJURED ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OBJECTID ;;
  }

  dimension: old_driver {
    type: number
    sql: ${TABLE}.OLD_DRIVER ;;
  }

  dimension: old_pedestrian {
    type: number
    sql: ${TABLE}.OLD_PEDESTRIAN ;;
  }

  dimension: otherinjury {
    type: number
    sql: ${TABLE}.OTHERINJURY ;;
  }

  dimension: passenger {
    type: number
    sql: ${TABLE}.PASSENGER ;;
  }

  dimension: passengervehicle {
    type: number
    sql: ${TABLE}.PASSENGERVEHICLE ;;
  }

  dimension: ped_cyclist_13_18 {
    type: number
    sql: ${TABLE}.PED_CYCLIST_13_18 ;;
  }

  dimension: ped_cyclist_5_12 {
    type: number
    sql: ${TABLE}.PED_CYCLIST_5_12 ;;
  }

  dimension: pedestrian {
    type: number
    sql: ${TABLE}.PEDESTRIAN ;;
  }

  dimension: pillion {
    type: number
    sql: ${TABLE}.PILLION ;;
  }

  dimension: police_attend {
    type: yesno
    sql: ${TABLE}.POLICE_ATTEND ;;
  }

  dimension: publicvehicle {
    type: number
    sql: ${TABLE}.PUBLICVEHICLE ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.REGION_NAME ;;
  }

  dimension: region_name_all {
    type: string
    sql: ${TABLE}.REGION_NAME_ALL ;;
  }

  dimension: rma {
    type: string
    sql: ${TABLE}.RMA ;;
  }

  dimension: rma_all {
    type: string
    sql: ${TABLE}.RMA_ALL ;;
  }

  dimension: road_geometry {
    type: string
    sql: ${TABLE}.ROAD_GEOMETRY ;;
  }

  dimension: run_offroad {
    type: yesno
    sql: ${TABLE}.RUN_OFFROAD ;;
  }

  dimension: seriousinjury {
    type: number
    sql: ${TABLE}.SERIOUSINJURY ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.SEVERITY ;;
  }

  dimension: speed_zone {
    type: string
    sql: ${TABLE}.SPEED_ZONE ;;
  }

  dimension: srns {
    type: string
    sql: ${TABLE}.SRNS ;;
  }

  dimension: srns_all {
    type: string
    sql: ${TABLE}.SRNS_ALL ;;
  }

  dimension: stat_div_name {
    type: string
    sql: ${TABLE}.STAT_DIV_NAME ;;
  }

  dimension: total_persons {
    type: number
    sql: ${TABLE}.TOTAL_PERSONS ;;
  }

  dimension: unknown {
    type: number
    sql: ${TABLE}.UNKNOWN ;;
  }

  dimension: unlicencsed {
    type: number
    sql: ${TABLE}.UNLICENCSED ;;
  }

  dimension: vicgrid_x {
    type: number
    sql: ${TABLE}.VICGRID_X ;;
  }

  dimension: vicgrid_y {
    type: number
    sql: ${TABLE}.VICGRID_Y ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.X ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.Y ;;
  }

  dimension: young_driver {
    type: number
    sql: ${TABLE}.YOUNG_DRIVER ;;
  }

  measure: count {
    type: count
    drill_fields: [region_name, stat_div_name, deg_urban_name, lga_name]
  }
}
