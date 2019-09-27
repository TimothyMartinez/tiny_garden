import React, { Component } from 'react'
import axios from 'axios'
import FeaturedProducts from './FeaturedProducts'

const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

export const headers = {
  'X-Requested-With': 'XMLHttpRequest',
  'X-CSRF-TOKEN': token
};

class FeaturedList extends Component {
  state = { 
    cartItems: this.props.cartItems,
    refetch: false,
    plants: this.props.plants,
  }

  componentDidMount() {
    if(this.props.user) {
      this.fetchData()
    }
  }

  componentDidUpdate() {
    if(this.state.refetch){
      this.fetchData()
    }
  }

  componentWillUnmount() {

  }

  fetchData = async () => {
    const { cartId } = this.props
    const { data } = await axios.get(`/carts/${cartId}/cart_products`)
    this.setState({ cartItems: data.cartItems, refetch: false })
  }

  addCart = async (id) => {
    if(this.props.user) {
      const { cartItems } = this.state
      const { cartId } = this.props
      const item = cartItems.find((cartItem => cartItem.sellableId === id)) || {}
      const postUrl = `/carts/${cartId}/cart_products`
      const patchUrl = `/carts/${cartId}/cart_products/${item.id}`
      if(item.sellableId == id) {
        await axios.patch(patchUrl, { amount: item.amount + 1 }, { headers }) 
        this.setState({ refetch: true })
      } else {
        await axios.post(postUrl , { product_id: id }, { headers })
        this.setState({ refetch: true })
      }
    }
  } 

  render() {
    const { plants } = this.state;
    return (
      <div className="plants-list">
        <FeaturedProducts plants={plants} addCart={this.addCart}/>
      </div>
    )
  }
}

export default FeaturedList;
