import React from 'react'
// import article2 from '/Users/matthewpalmer/Desktop/C34_matthew_raphael_tim/app/assets/images/article2.png'
// import article3 from '/Users/matthewpalmer/Desktop/C34_matthew_raphael_tim/app/assets/images/article3.png'



const Articles = () => {
  return (
    <>
      <article className="article">
        <div className="plant-pic">
          <img src="http://tinygarden-bucket.herokuapp.com/images/article2.png" alt='article'/>
        </div>
      <div className="care-tips">
        <header className="care-tips-title">
          <p>Repot your plants like a pro</p>
        </header>
        <div className="care-tips-summary" >
          <p>Repotting does not necessarily mean changing 
            a plant’s planter, but rather, changing its soil
            or potting mix. Fresh soil means new nutrients. 
            This is great news if you love your current planter,
            but if you’re looking to purchase a new one that’s fine.
          </p>
        </div>
        <div className="read-more">
          <a href="https://www.instagram.com/p/B0uB2GslGPA/?utm_source=ig_web_copy_link"><p>Read more</p></a>
        </div>
        </div>
      </article>
      <article className="article">
        <div className="plant-pic">
          <img src="http://tinygarden-bucket.herokuapp.com/images/article3.png" alt='article'/>
        </div>
        <div className="care-tips">
          <div className="care-tips-title">
            <p>How to Trim your Plants </p>
        </div>
        <div className="care-tips-summary">
            <p>If you haven't been pruning your fruit-bearing 
              bushes regularly, you may need to do some rejuvenation
              pruning which involves removing all dead and overgrown growth. 
              You can approach it with a hard pruning and cut the 
              entire plant back to 6 to 12 inches of growth 
              (basically, starting over) or you can prune gradually over tim
              - The Spruce.
            </p>
          </div>
          <div className="read-more">
          <a href="https://www.instagram.com/p/B0uBnJYlztk/?utm_source=ig_web_copy_link"><p>Read more</p></a>
          </div>
        </div>
      </article>
      <article className="article">
        <div className="plant-pic">
        <img src='http://tinygarden-bucket.herokuapp.com/images/article2.png' alt='article 3'/>
        </div>
      <div className="care-tips">
        <div className="care-tips-title">
          <p>When it comes to watering, sometimes <br/> less is more</p>
        </div>
          <div className="care-tips-summary">
            <p>Much like different plants need varying amounts
               of light, different plants need varying amounts 
               of water. Think of your plants’ natural environment:
                is it rainy and tropical or hot and dry? These 
                simple questions will help you gauge how 
                much water your plant needs
              - The sill. 
          </p>
          </div>
        <div className="read-more">
        <a href="https://www.instagram.com/p/B0uBjnilSk3/?utm_source=ig_web_copy_link"><p>Read more</p></a>
        </div>
      </div>
    </article>
      <section className="section">
        <p id="load-more">Load more</p>
      </section>
    </>
  )
}

export default Articles;
