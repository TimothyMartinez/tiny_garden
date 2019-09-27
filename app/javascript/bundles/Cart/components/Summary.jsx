import React, { Component } from 'react';

const Summary = props => {
  const shipping = 500
  const totalItems = props.summary
  const taxAmmount = (totalItems / 100) * 7
  const total = totalItems + taxAmmount + (shipping / 100)

  

  return (
    <section id="summary" >
      <h1>Summary</h1>
      <div id="summary-details">
        <div>Subtotal<span>{totalItems} $</span></div>
        <hr className="summ-lines"/>
        <div>Estimated Shipping<span>{shipping / 100} $</span></div>
        <hr className="summ-lines-two"/>
        <div>Estimated Tax<span>{taxAmmount.toFixed(2)} $</span></div>
        <hr id="total-line"/>
        <div>Total<span>{total.toFixed(2)} $</span></div>
      </div>
      <button className="btnprimarycart">
        <span>Check out</span>
      </button>
    </section>
  )
}

export default Summary;
