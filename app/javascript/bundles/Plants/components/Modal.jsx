import React from 'react';
import { Portal } from 'react-portal';

const Modal = ({ isOpen, modalContent, actions = [],  }) =>
  isOpen && (
    <Portal>
      <aside className="c-modal-cover fadeIn">
        <div className="c-modal slideIn">
          <div className="modalWrapper">
            <div className="modalHeader">
              <div>
                {actions.map(({ label, onClick, i }) => (
                  <button className="btn" onClick={onClick} key={modalContent.name}>
                  <img src="https://img.icons8.com/ios-filled/25/000000/double-left.png" className="back-arrow"/>
                    {label}
                  </button>
                ))}
              </div>
              <div className="icn-person material-icons animated bounce modal-title">
                tiny garden
              </div>
              <div className="cart-modal-navlink">
                <button className="btn-round yellow add-to-cart">
                  Add to cart
                </button>
              </div>
            </div>
            <div className="c-modal_body">
              <img src={modalContent.url} alt={modalContent.name} />
              <div className="plant-modal">
                <h1>{modalContent.name}</h1>
                <hr />
                <ul className="plant-details">
                  <li><span className="detail-type">Light:</span> {modalContent.light}</li>
                  <li><span className="detail-type">Size:</span> {modalContent.size}</li>
                  <li><span className="detail-type">Mainenance:</span> {modalContent.maintenance}</li>
                  <li><span className="detail-type">Type:</span> {modalContent.category}</li>
                  <hr />
                  <h4></h4>
                  <li><span className="detail-type">Reviews()</span></li>
                  <li><span className="detail-type">stars</span></li>
                  <hr/>
                  <li><span className="detail-type">30 day guarantee</span></li>
                  <li><span className="detail-type">If your plant dies within 30 days, we'll replace it for free, no questions asked.</span></li>
                </ul>

              </div>
            </div>
            
          </div>
        </div>
      </aside>
    </Portal>
  );

export default Modal;
