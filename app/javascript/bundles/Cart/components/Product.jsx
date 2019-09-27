import React, { Component } from 'react';
import '../../../../assets/stylesheets/products.css';

class Product extends Component {
  state = {
    product: { images:[] },
  }

  componentDidMount(){
    const { item } = this.props
    const url = `/${item.sellableType.toLowerCase()}s/${item.sellableId}.json`
    fetch(url)
      .then(res=>res.json())
      .then(product => this.setState({ product }))
  }

  render(){
    const { product } = this.state
    const { handleAmountChange, item, handleDeleteItem } = this.props;
    return (
      <li className="product-container">
        <img src={product.url} alt={product.name} />
        <div className="product-details">
          <div className="product-left">
            <h3>{product.name}</h3>
            <div className="add-remove">
              <button className="product-btns" type="click" onClick={handleAmountChange(item.id, 1)} >+</button>
              <div className="amount-totes">{item.amount}</div>
              <button className="product-btns" type="click" onClick={handleAmountChange(item.id, -1)} >-</button>
            </div>
          </div>
          <div className="product-right">
            <p>{(item.price / 100).toFixed(2)}</p>
            <button onClick={handleDeleteItem(item.id)}  className="cart-delete" type="submit"><img src="https://img.icons8.com/ios/50/000000/waste.png"/></button>
          </div>
        </div>
      </li>
    )
  }
}

export default Product;
