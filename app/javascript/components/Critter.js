import React from "react"
import PropTypes from "prop-types"
class Critter extends React.Component {
  render () {
    const {id, name, age, crit_type, logClick} = this.props.details;
    return (
      <React.Fragment>
      <li className="critter" id={id}>
        Critter: {name}, crit type: {crit_type}, Age: {age}
        <button className='btn btn-sm btn-outline-warning edit-critter-btn'>Edit</button>
      </li>
      </React.Fragment>
    );
  }
}

export default Critter
