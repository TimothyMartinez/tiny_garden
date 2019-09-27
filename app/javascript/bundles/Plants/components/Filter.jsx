import React from 'react';

const Filter = ({ filterType, filterParams = [], handleClick }) => (
  <div className="filter-product-box" >
    <div className="filter-header">
      <h4>{filterType}</h4>
    </div>
    <div className="filter-list-items">
      {filterParams.map(({ value, label }) => (
        <React.Fragment key={label}>
          <div className="check-alignment">
            <input type="checkbox" value={value} onClick={() => handleClick(filterType, value)} />
            <label htmlFor="exampleRadios1">
              {label}
            </label>
          </div>
        
        </React.Fragment>
      ))}
    </div>
  </div>
)

export default Filter;
