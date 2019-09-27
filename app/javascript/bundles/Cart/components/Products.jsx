import React from 'react';
import Product from './Product'

const Products = ({ items, handleAmountChange, handleDeleteItem }) => {
  return (
    <>
      <ul id="products-container">
        {
          items.map((item) => {
            return (
              <div key={item.id}>
                <Product item={item} handleAmountChange={handleAmountChange} handleDeleteItem={handleDeleteItem} /> 
                <hr/>
              </div>
            )
          })
        }
      </ul>
    </>
  )
}

export default Products;
