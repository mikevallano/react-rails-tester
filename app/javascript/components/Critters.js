import React from "react"
import PropTypes from "prop-types"

class Critters extends React.Component {
  render () {
    return (
      <div className='critters'>
        <button onClick={this.props.addCritters} className='btn btn-success btn-sm'>Add Critters to State</button>
      </div>
    );
  }
}

export default Critters
