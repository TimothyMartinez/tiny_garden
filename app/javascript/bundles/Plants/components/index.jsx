import React, { Component } from 'react';
import axios from 'axios';
import PlantList from './PlantList'
import Filter from './Filter'
import { filters } from './utils'

class Plants extends Component {
  state = { 
    plants: [],
    filters: { size: [], light: [], maintenance: [], category: [] }
  }
  
  componentDidMount(){
    this.fetchPlants()
  }

  fetchPlants = () => {
    const { filters } = this.state;
    const searchParams = ['size', 'light', 'maintenance', 'category'].reduce((acc, filterType) => {
      const filter = filters[filterType] || [];
      if (!filter.length) return acc;
      const filterParams = `${filterType}=${filter.join(',')}`;
      return acc ? `${acc}&${filterParams}` : filterParams;
    }, '');
    const url = searchParams ? `/plants.json?${searchParams}` : '/plants.json';
    axios.get(url).then(({ data }) => this.setState({ plants: data.plants }));
  };

  handleFilter = (type, value) => {
    const filters = this.state.filters[type]
    const updatedFilter = filters.includes(value) 
      ? filters.filter(currentFilter => currentFilter !== value)
      : [...filters, value]
    this.setState({ filters: { ...this.state.filters, [type]: updatedFilter }}, this.fetchPlants)
  }

  render() {
    const { plants } = this.state;
    return (
      <div className="center-filter-items">
        <div className="checkbox-layout">
          {
            filters.map((filter, i) => <div key={`filter-${i}`}><Filter {...filter} handleClick={this.handleFilter}/></div>)
          }
        </div>
        <div className="plants-list">
          <PlantList plants={plants}/>
        </div>
      </div>
    )
  }
}

export default Plants;
