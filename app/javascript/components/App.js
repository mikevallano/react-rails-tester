import React from "react"
import PropTypes from "prop-types"
import Critters from "./Critters"
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
        <Tester/>
      </React.Fragment>
    );
  }
}

export default App
