import React, { Component } from 'react';
import Modal from './Modal';

class PlantList extends Component {
  state = {
    modalOpen: false,
    plant: {}
  }
  
  handleClick = plant => {
    this.setState({ plant, modalOpen: true })
  }

  toggleModal = _ => this.setState(prevState => ({ modalOpen: !prevState.modalOpen }));
  
  render() {
    const { modalOpen, plant } = this.state;
    return(
      <div className="shopfeatprod plantlist-wrapper">
        {
          this.props.plants.map((plant, i) => (
            <article className="cards cards-filter" key={i}>
              <div className="hvrbox hvrbox-width">
                <img className="plant-filter-image" src={plant.url} alt="${plant.name}" key={i}/>
                <div className="space-between">
                  <h5 className="left">{plant.name}</h5>
                  <h6 className="right">{plant.price}</h6>
                </div>
                <div className="hvrbox-layer_top" onClick={() => this.handleClick(plant)} >
                  <div className="hvrbox-text">
                    <h3>{plant.name}</h3>
                    <h4>{plant.size} - {plant.maintenance}</h4>
                    <p>{plant.description.slice(0, 180) + "..."}</p><br/>-- Click to see more --
                  </div>
                </div>
              </div>
              <button className ="btn-round red filter-red-bttn" onClick={() => this.addClick(plant)}>
                Add to Cart
              </button>
            </article>
          ))
        }
        <Modal
          isOpen={modalOpen}
          modalContent={plant}
          actions={[{ label: 'Back', onClick: this.toggleModal}]}
        />
      </div>
    )
  }
}

export default PlantList
