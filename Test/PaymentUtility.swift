//
//  PaymentUtility.swift
//  Servify
//
//  Created by Vijay Yadav on 06/03/18.
//  Copyright © 2018 servify. All rights reserved.
//

import UIKit
import Razorpay

enum PaymentFlow {
    case service(serviceRequestID: Int)
}

enum PaymentErrorType {
    case backend
}

enum PaymentLoaderType {
    case general
}

enum GatewayType: String {
    case razorpay = "razorpay"
    case instamojo = "instamojo"
}

protocol PaymentUtilityDelegate {
    
    func paymentOnSuccess(withMessage msg:String?)
    func paymentOnFailure(withMessage msg:String?)
}

class PaymentUtility: NSObject {
    
    var presentingViewControllerRef: UIViewController?
    var delegate: PaymentUtilityDelegate?
    
    fileprivate var payableAmount : Int = 0
    fileprivate var paymentID: String = ""
    fileprivate var paymentFlowType: PaymentFlow?
    fileprivate var razorPay: Razorpay!
    
    
    // MARK: Internal Methods
    fileprivate func showLoader(loaderType: PaymentLoaderType) {
        switch loaderType {
        case .general:
            break
        }
    }
    
    fileprivate func hideLoader() {
       
    }
    
    fileprivate func showPrompt(errorType: PaymentErrorType) {
        switch errorType {
        case .backend: break
//            ServifyPrompt.showMessage(message: "Something went wrong")
        }
    }
    
    fileprivate func checkRazorpayPaymentStatus(razorpayPaymentID: String){
        if let flow = paymentFlowType {
            switch flow {
            case .service( _) : break
                
//                if let consumerID = AppUtility.sharedInstance.consumer?.ConsumerID {
//
//                    let parameter : [String: Any] = ["ConsumerID": consumerID,
//                                                     "ConsumerServiceRequestID": serviceRequestID,
//                                                     "paymentID" : razorpayPaymentID,
//                                                     "id" : self.paymentID,
//                                                     "PaymentProcessID" : self.paymentID,
//                                                     "amount" : self.payableAmount]
//
//                    postPaymentAction(withParameters: parameter)
//                }
            }
        }
    }
    
    fileprivate func checkWebPaymentStatus(redirectURL:String?){
        if let flow = paymentFlowType {
            switch flow {
            case .service( _) : break
                
//                if let consumerID = AppUtility.sharedInstance.consumer?.ConsumerID {
//
//                    let parameter : [String: Any] = ["ConsumerID": consumerID,
//                                                     "ConsumerServiceRequestID": serviceRequestID,
//                                                     "id" : self.paymentID,
//                                                     "PaymentProcessID" : self.paymentID,
//                                                     "amount" : self.payableAmount,
//                                                     "redirect_url" : redirectURL ?? "",
//                                                     "paymentID": ""]
//
//
//                    postPaymentAction(withParameters: parameter)
//                }
            }
        }
    }
        
    // MARK: Webservice Call To Initiate Payment
    func initPayment(withFlow flowType:PaymentFlow) {
        
        paymentFlowType = flowType
        
        switch flowType {
        case .service( _):
            break
        }
    }
    
    
    
    
    fileprivate func presentWebView(withPaymentUrl url:String, andRedirectUrl rUrl:String, pageTitle:String){
        
    }
    
   

}

extension PaymentUtility: RazorpayPaymentCompletionProtocol {
    func onPaymentError(_ code: Int32, description str: String) {
        self.delegate?.paymentOnFailure(withMessage: str)
    }
    
    func onPaymentSuccess(_ payment_id: String) {
        checkRazorpayPaymentStatus(razorpayPaymentID: payment_id)
    }
}


