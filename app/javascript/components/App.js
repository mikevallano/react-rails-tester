import React from "react"
import PropTypes from "prop-types"
import Critters from "./Critters"
import Critter from "./Critter"
import Tester from "./Tester"

class App extends React.Component {
  state = {
    critters: {},
  }
  addCritters = () => {
    let _this = this
    fetch('/critters.json')
      .then(function(response) {
        return response.json();
      })
      .then(function(jsonCritters) {
        _this.setState({
          critters: jsonCritters
        })
      });
  }
  render () {
    return (
      <React.Fragment>
        <Critters addCritters={this.addCritters}/>
        <ul className="all-critters">
          {Object.keys(this.state.critters).map(key => <Critter key={key} index={key} details={this.state.critters[key]}/>)}
        </ul>
        <Tester/>
      </React.Fragment>
    );
  }
}

export default App
