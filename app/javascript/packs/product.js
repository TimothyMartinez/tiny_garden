import ReactOnRails from 'react-on-rails'
import Cart from '../bundles/Cart/components/Cart'
import Plants from '../bundles/Plants/components'
import FeaturedList from '../bundles/FeaturedProducts/components/FeaturedList'
import CarePage from '../bundles/CarePage/components/CarePage'

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Cart,
  Plants,
  FeaturedList,
  CarePage,
});
