import React from "react"
import PropTypes from "prop-types"
class Critter extends React.Component {
  render () {
    const {name, age, crit_type} = this.props.details;
    return (
      <React.Fragment>
      <li className="critter">
        Critter: {name}, crit type: {crit_type}, Age: {age}
      </li>
      </React.Fragment>
    );
  }
}

export default Critter
