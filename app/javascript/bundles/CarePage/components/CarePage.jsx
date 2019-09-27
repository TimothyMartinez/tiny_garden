import React from 'react'
import Articles from './Articles'
import Doctor from './Doctor'

const orange = {
  color: "orange"
}

class CarePage extends React.Component{ 
  state = {
    articles: true,
    doctor: false,
  }

  articlesChange = () => {
    if (this.state.articles == false) {
      this.setState({articles: true, doctor: false}) 
    }
  }

  doctorChange = () => {
    if (this.state.doctor == false) {
      this.setState({doctor: true, articles: false}) 
    }
  }

  // changeStyle = 
  
  render(){
    const { doctor } = this.state;
    return (
      <div id="care-sub-nav">
        <div id="sub-cont">
          <div id="subnav1" style={!doctor ? orange : null} className="test" onClick={this.articlesChange}>
            ARTICLES
          </div>
          <div id="subnav2" style={doctor ? orange : null} onClick={this.doctorChange}>
              PLANT DOCTOR
          </div>
        </div>
        <>
          { this.state.articles ? <Articles /> : "" }
          { this.state.doctor ? <Doctor /> : "" }
        </>
      </div>
    )
  }
}

export default CarePage 
