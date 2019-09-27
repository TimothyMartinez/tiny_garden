import React from 'react'

const FeaturedProducts = (props) => (
  <div className="shopfeatprod">
    {
      props.plants.map((plant, i) => (
      <article className="cards product-link" key={i} >
        <a  href="/products">
          <div className="hvrbox hvrbox-width">
            <img src={plant.url} alt="Plant Image" key={i}/>
            <div className="space-between">
              <h5 className="left">{plant.name}</h5>
              <h6 className="right">{plant.price}</h6>
            </div>
            <div className="hvrbox-layer_top">
              <div className="hvrbox-text">
                <h3>{plant.name}</h3>
                <h4>{plant.size}</h4>
                <p>{plant.description.slice(0, 180) + "..."}</p>
              </div>
            </div>
          </div>
        </a>
        <button className="btn-round red filter-red-bttn" onClick={() => props.addCart(plant.id)}>
          Add to Cart
        </button>
      </article>
      ))
    }
  </div>
)




export default FeaturedProducts
